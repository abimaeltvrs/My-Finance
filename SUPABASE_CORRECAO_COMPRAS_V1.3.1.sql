-- FINANCE+ V1.3.1 - Diagnóstico/correção de compras no cartão
-- Execute uma única vez no Supabase > SQL Editor.

create table if not exists public.card_transactions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  card_id uuid not null references public.cards(id) on delete cascade,
  description text not null,
  purchase_date date not null,
  amount numeric(12,2) not null check (amount > 0),
  installment_number integer not null default 1,
  installments_total integer not null default 1,
  reference_month date not null,
  notes text,
  created_at timestamptz default now()
);

alter table public.card_transactions enable row level security;

drop policy if exists "Usuário gerencia próprias compras do cartão" on public.card_transactions;

create policy "Usuário gerencia próprias compras do cartão"
on public.card_transactions
for all
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

grant usage on schema public to authenticated;
grant select, insert, update, delete on table public.card_transactions to authenticated;
grant select, insert, update, delete on table public.card_invoices to authenticated;

-- Garante que reference_month é DATE
alter table public.card_transactions
  alter column reference_month type date
  using reference_month::date;

-- Habilita Realtime sem duplicar publicação
do $$
begin
  if not exists (
    select 1 from pg_publication_tables
    where pubname='supabase_realtime'
      and schemaname='public'
      and tablename='card_transactions'
  ) then
    alter publication supabase_realtime add table public.card_transactions;
  end if;
end $$;
