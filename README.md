# FINANCE+ V1.6.2 — Correção das contas recorrentes

## O que mudou
- A geração das próximas contas deixou de depender do navegador.
- Agora o próprio Supabase cria as ocorrências futuras automaticamente.
- Mensal: próximos 12 meses.
- Semanal: próximas 52 semanas.
- Anual: próximos 5 anos.
- Proteção contra lançamentos duplicados.
- O formulário mostra claramente o efeito de cada opção de recorrência.
- A lista identifica lançamentos como Mensal, Semanal ou Anual.

## SQL obrigatório
Execute no Supabase:
`SUPABASE_RECORRENCIA_V1.6.2.sql`

Este SQL substitui/corrige a lógica da V1.6.

## Commit changes
FINANCE+ V1.6.2 - corrigir geração de contas recorrentes
