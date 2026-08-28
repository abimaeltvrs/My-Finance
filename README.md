# FINANCE+ V1.6 — Contas recorrentes automáticas

Nesta versão:
- Recorrência mensal gera os próximos 12 meses.
- Recorrência semanal gera as próximas 52 semanas.
- Recorrência anual gera os próximos 5 anos.
- A mesma ocorrência não é criada duas vezes.
- As ocorrências futuras aparecem normalmente no Dashboard e no Calendário.
- Ao editar uma conta recorrente, nome, categoria, valor e observação são propagados para ocorrências futuras ainda não pagas.

## SQL obrigatório
Execute uma única vez no Supabase:
`SUPABASE_RECORRENCIA_V1.6.sql`

## Commit changes
FINANCE+ V1.6 - adicionar contas recorrentes automáticas
