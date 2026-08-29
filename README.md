# FINANCE+ V3.0.1 — Correção de contas fixas

Corrigido o cadastro de contas recorrentes.

## Mensal
Ao cadastrar uma conta como Mensal:
- o lançamento do mês escolhido é criado;
- os próximos 12 meses são criados automaticamente;
- todos os lançamentos futuros entram como PENDENTE;
- ao navegar no Dashboard mês a mês, a conta aparece em “A pagar” no respectivo mês.

Exemplo:
Internet — R$ 120 — vencimento dia 10 — Mensal
gera:
10/08, 10/09, 10/10, ... nos próximos 12 meses.

## Semanal
Gera as próximas 52 semanas.

## Anual
Gera os próximos 5 anos.

## Edição
Ao editar uma conta pertencente a uma série recorrente, os lançamentos futuros ainda pendentes também recebem os dados atualizados.

## Offline
Uma nova série recorrente cadastrada offline é colocada na fila de sincronização junto com os próximos vencimentos.

## Supabase
Execute `SUPABASE_V3.0.1.sql` uma vez. O script é idempotente.

## Commit changes
FINANCE+ V3.0.1 - corrigir contas fixas nos meses futuros
