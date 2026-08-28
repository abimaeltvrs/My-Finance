-- FINANCE+ V1.6.2
-- Recorrência gerada diretamente pelo Supabase.

alter table public.bills
  add column if not exists recurrence_series_id uuid,
  add column if not exists recurrence_index integer default 0;

create unique index if not exists bills_recurrence_series_due_unique
on public.bills(user_id, recurrence_series_id, due_date)
where recurrence_series_id is not null;

-- Define a própria conta original como raiz da série.
create or replace function public.finance_set_bill_series_root()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  if new.recurrence is distinct from 'unica'
     and new.recurrence_series_id is null then
    new.recurrence_series_id := new.id;
    new.recurrence_index := coalesce(new.recurrence_index, 0);
  end if;
  return new;
end;
$$;

drop trigger if exists trg_finance_set_bill_series_root on public.bills;
create trigger trg_finance_set_bill_series_root
before insert on public.bills
for each row
execute function public.finance_set_bill_series_root();

-- Gera as ocorrências futuras somente para a conta raiz.
create or replace function public.finance_generate_bill_recurrence()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
declare
  i integer;
  target_date date;
  max_steps integer;
begin
  if new.recurrence is null
     or new.recurrence = 'unica'
     or new.recurrence_series_id is null
     or new.recurrence_series_id <> new.id
     or coalesce(new.recurrence_index,0) <> 0 then
    return new;
  end if;

  max_steps := case
    when new.recurrence = 'mensal' then 12
    when new.recurrence = 'semanal' then 52
    when new.recurrence = 'anual' then 5
    else 0
  end;

  for i in 1..max_steps loop
    if new.recurrence = 'semanal' then
      target_date := new.due_date + (i * 7);

    elsif new.recurrence = 'mensal' then
      -- Preserva o dia original quando possível; em meses menores usa o último dia.
      target_date :=
        (
          date_trunc('month', new.due_date + make_interval(months => i))
          + (
              least(
                extract(day from new.due_date)::integer,
                extract(
                  day from (
                    date_trunc('month', new.due_date + make_interval(months => i))
                    + interval '1 month - 1 day'
                  )
                )::integer
              ) - 1
            ) * interval '1 day'
        )::date;

    elsif new.recurrence = 'anual' then
      target_date :=
        (
          date_trunc('month', new.due_date + make_interval(years => i))
          + (
              least(
                extract(day from new.due_date)::integer,
                extract(
                  day from (
                    date_trunc('month', new.due_date + make_interval(years => i))
                    + interval '1 month - 1 day'
                  )
                )::integer
              ) - 1
            ) * interval '1 day'
        )::date;
    end if;

    insert into public.bills (
      user_id,
      name,
      category,
      amount,
      due_date,
      recurrence,
      status,
      notes,
      recurrence_series_id,
      recurrence_index
    )
    values (
      new.user_id,
      new.name,
      new.category,
      new.amount,
      target_date,
      new.recurrence,
      'pendente',
      new.notes,
      new.id,
      i
    )
    on conflict do nothing;
  end loop;

  return new;
end;
$$;

drop trigger if exists trg_finance_generate_bill_recurrence on public.bills;
create trigger trg_finance_generate_bill_recurrence
after insert on public.bills
for each row
execute function public.finance_generate_bill_recurrence();

-- Corrige contas recorrentes antigas que ainda não possuem raiz de série.
update public.bills
set recurrence_series_id = id,
    recurrence_index = coalesce(recurrence_index,0)
where recurrence <> 'unica'
  and recurrence_series_id is null;

grant select, insert, update, delete on table public.bills to authenticated;
