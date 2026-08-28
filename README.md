# FINANCE+ V1.3.1

Correção para salvar compras no cartão.

## Alterações
- Validação reforçada dos campos da compra.
- Insert agora confirma no Supabase com `.select()`.
- Erro real do Supabase aparece na tela.
- Compra é salva primeiro; recalcular fatura acontece depois.
- Parcelamento em centavos evita diferença de arredondamento.
- Verificação automática da tabela `card_transactions`.
- SQL de correção incluído.

## Passo obrigatório
Execute `SUPABASE_CORRECAO_COMPRAS_V1.3.1.sql` no Supabase > SQL Editor.

## Commit changes
FINANCE+ V1.3.1 - corrigir salvamento de compras no cartão
