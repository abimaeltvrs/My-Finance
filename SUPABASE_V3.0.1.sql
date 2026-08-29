-- FINANCE+ V3.0.1
-- Correção das contas fixas/recorrentes.
-- Execute uma vez no SQL Editor do Supabase. É seguro executar mesmo se as colunas já existirem.

alter table public.bills
  add column if not exists recurrence_series_id uuid,
  add column if not exists recurrence_index integer default 0;

create index if not exists bills_recurrence_series_idx
  on public.bills(user_id, recurrence_series_id);

create unique index if not exists bills_recurrence_series_due_unique
  on public.bills(user_id, recurrence_series_id, due_date)
  where recurrence_series_id is not null;

grant select, insert, update, delete on table public.bills to authenticated;
