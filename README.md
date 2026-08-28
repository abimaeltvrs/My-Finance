# FINANCE+ V3.0 — Dashboard mês a mês + PDF mensal

## Dashboard
O Dashboard agora possui navegação de período no topo:
- mês anterior
- mês seguinte
- botão “Mês atual”

Ao trocar o mês, TODOS os indicadores do Dashboard são recalculados para o período escolhido:
- receitas recebidas
- receitas pendentes / a receber
- despesas pagas
- disponível
- contas a pagar
- faturas abertas
- previsão de fim do mês
- gráficos
- próximos compromissos

Isso também permite consultar meses futuros que já possuam receitas recorrentes, contas ou faturas cadastradas.

## PDF do mês
Foi adicionado “PDF deste mês” diretamente no Dashboard.

O PDF usa exatamente o mês selecionado e mostra:
- receitas recebidas
- receitas pendentes / a receber
- despesas efetivamente pagas
- contas + faturas em aberto
- saldo realizado
- previsão no fim do período
- lançamentos do período com status

## Banco de dados
Se você já executou o `SUPABASE_V2.9.sql`, NÃO precisa executar outro SQL para a V3.0.

## Commit changes
FINANCE+ V3.0 - adicionar dashboard mensal e PDF por mes
