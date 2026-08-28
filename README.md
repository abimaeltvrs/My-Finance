# FINANCE+ V1.2.5

Atualização instantânea do Dashboard.

## Correção principal
As ações não dependem mais de recarregar toda a página depois de cada alteração.

Agora a interface atualiza imediatamente após:
- Cadastrar conta
- Editar conta
- Marcar como pago
- Editar pagamento
- Desfazer pagamento
- Excluir lançamento

Os dados continuam sendo gravados no Supabase, mas o Dashboard usa o resultado da operação para atualizar a tela na mesma hora.

O botão "Atualizar" foi renomeado para "Sincronizar" e serve apenas para forçar uma releitura do servidor quando desejado.

## Commit changes
FINANCE+ V1.2.5 - atualização instantânea do dashboard
