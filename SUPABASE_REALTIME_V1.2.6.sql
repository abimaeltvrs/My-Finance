-- FINANCE+ V1.2.6 - Realtime
-- Execute uma única vez no Supabase > SQL Editor.

do $$
begin
  if not exists (
    select 1 from pg_publication_tables
    where pubname='supabase_realtime' and schemaname='public' and tablename='bills'
  ) then
    alter publication supabase_realtime add table public.bills;
  end if;

  if not exists (
    select 1 from pg_publication_tables
    where pubname='supabase_realtime' and schemaname='public' and tablename='payments'
  ) then
    alter publication supabase_realtime add table public.payments;
  end if;

  if not exists (
    select 1 from pg_publication_tables
    where pubname='supabase_realtime' and schemaname='public' and tablename='incomes'
  ) then
    alter publication supabase_realtime add table public.incomes;
  end if;
end $$;
