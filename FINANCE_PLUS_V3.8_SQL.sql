-- FINANCE+ V3.8 — saldo inicial do caixa
alter table public.profiles
  add column if not exists initial_cash_balance numeric(14,2) not null default 0;

grant select, insert, update on table public.profiles to authenticated;
