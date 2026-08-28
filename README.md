# FINANCE+ V1.4.4

Correção reforçada do módulo de cartões.

## Alterações
- Compras e faturas passam a ser carregadas por intervalo do mês, evitando falhas de comparação do campo `reference_month`.
- Após salvar uma compra, o app confirma no Supabase se as parcelas realmente permaneceram gravadas.
- O app recarrega as compras diretamente do banco antes de finalizar o lançamento.
- Mantido o bloqueio do Realtime durante o salvamento.
- A fatura inteira continua clicável.
- Adicionado botão explícito `Ver itens`.
- Detalhes da fatura também usam consulta por intervalo mensal.
- Mostra descrição, data, parcela, observação e valor de cada item.

## SQL
Não há SQL novo obrigatório.

## Commit changes
FINANCE+ V1.4.4 - estabilizar compras e detalhes das faturas
