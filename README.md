# FINANCE+ V3.8 — Caixa acumulado

O FINANCE+ agora diferencia:
- Saldo atual: dinheiro acumulado disponível desde o início do uso.
- Resultado do mês: receitas recebidas no mês menos pagamentos realizados no mês.

Fórmula do Saldo Atual:
saldo inicial + todas as receitas recebidas - todos os pagamentos realizados.

Em Configurações existe agora `Caixa > Saldo inicial`.
Exemplo: saldo inicial R$ 2.000 + receita recebida R$ 1.000 - pagamento R$ 600 = saldo atual R$ 2.400.

Receitas pendentes não aumentam o caixa. Contas/faturas apenas cadastradas também não diminuem o caixa; a saída ocorre quando há pagamento registrado.

Execute uma vez o arquivo `FINANCE_PLUS_V3.8_SQL.sql` no Supabase antes de testar.

Commit changes:
FINANCE+ V3.8 - adicionar caixa acumulado e saldo inicial
