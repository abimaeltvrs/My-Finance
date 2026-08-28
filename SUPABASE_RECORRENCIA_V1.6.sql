-- FINANCE+ V1.6 - Contas recorrentes automáticas

alter table public.bills
  add column if not exists recurrence_series_id uuid,
  add column if not exists recurrence_index integer default 0;

create unique index if not exists bills_recurrence_series_due_unique
on public.bills(user_id, recurrence_series_id, due_date)
where recurrence_series_id is not null;

update public.bills
set recurrence_series_id = id,
    recurrence_index = coalesce(recurrence_index, 0)
where recurrence <> 'unica'
  and recurrence_series_id is null;

grant select, insert, update, delete on table public.bills to authenticated;
