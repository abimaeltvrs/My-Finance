# FINANCE+ V2.6 — Dashboard Inteligente

## Novo Dashboard
- Saldo do mês em destaque.
- Gráfico inteligente com evolução diária real do saldo.
- Verde para situação saudável.
- Amarelo/laranja para atenção.
- Vermelho para situação negativa.
- Comparação automática com o mês anterior.
- Projeção de saldo para o fim do mês.
- Receitas, despesas pagas e disponível.
- Total a pagar.
- Contas vencendo hoje e nos próximos 7 dias.
- Faturas em aberto e próximo vencimento.
- Próximos vencimentos.
- Gráfico Receitas x Despesas.
- Percentual da renda já utilizada.
- Cards clicáveis levando para as telas correspondentes.
- Alternância Básico/Avançado diretamente no Dashboard.

## Regra do gráfico
A curva é calculada dia a dia usando:
saldo acumulado = receitas recebidas - pagamentos realizados.

A cor do card/gráfico é calculada automaticamente:
- verde: saldo/projeção saudável;
- amarelo: comprometimento elevado ou projeção baixa;
- vermelho: saldo/projeção negativa.

## Projeção
Previsão de fechamento =
saldo realizado atual - contas pendentes - faturas abertas.

## Banco de dados
Nenhuma tabela nova.
Não precisa executar SQL.

## Commit changes
FINANCE+ V2.6 - implementar dashboard inteligente
