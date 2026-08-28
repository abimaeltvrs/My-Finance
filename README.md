# FINANCE+ V1.3.2

Correção do lançamento e atualização das compras no cartão.

## Corrigido
- O app confirma o INSERT da compra no Supabase.
- Depois da compra, abre automaticamente o mês da fatura correta.
- Se a compra ocorreu após o fechamento, ela aparece no mês seguinte e o usuário é avisado.
- Compras parceladas abrem a fatura da primeira parcela.
- O limite disponível considera todas as faturas abertas, inclusive meses futuros.
- Caso a compra seja salva mas o cálculo da fatura falhe, a mensagem mostra esse erro separadamente.

## SQL
Se o SQL da V1.3.1 já foi executado, não há novo SQL obrigatório.

## Commit changes
FINANCE+ V1.3.2 - corrigir atualização das compras e faturas
