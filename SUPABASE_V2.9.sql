-- FINANCE+ V2.9
-- Execute uma vez no SQL Editor do Supabase.

alter table public.cards
  add column if not exists card_color text default '#6D38C5';

alter table public.incomes
  add column if not exists status text,
  add column if not exists received_at timestamptz,
  add column if not exists recurrence_series_id uuid,
  add column if not exists recurrence_index integer default 1,
  add column if not exists recurrence_total integer default 1;

-- As receitas antigas do FINANCE+ já representavam dinheiro efetivamente recebido.
update public.incomes
set status = 'recebido'
where status is null;

update public.incomes
set received_at = (received_date::text || 'T12:00:00')::timestamptz
where status = 'recebido'
  and received_at is null;

alter table public.incomes
  alter column status set default 'pendente';

alter table public.incomes
  alter column status set not null;

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conname = 'incomes_status_check'
      and conrelid = 'public.incomes'::regclass
  ) then
    alter table public.incomes
      add constraint incomes_status_check
      check (status in ('pendente','recebido','cancelado'));
  end if;
end $$;

create index if not exists incomes_user_status_date_idx
  on public.incomes(user_id, status, received_date);

create index if not exists incomes_recurrence_series_idx
  on public.incomes(user_id, recurrence_series_id);

grant select, insert, update, delete on table public.cards to authenticated;
grant select, insert, update, delete on table public.incomes to authenticated;
