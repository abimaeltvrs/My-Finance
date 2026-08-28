# FINANCE+ V2.6.1 — Hotfix do Dashboard

## Problema encontrado na V2.6
O novo Dashboard substituiu uma área antiga que também continha controles operacionais de Contas.
O JavaScript continuava procurando:
- Nova conta;
- Sincronizar;
- Mês anterior;
- Próximo mês.

Como esses elementos haviam sido removidos do HTML, o JavaScript interrompia a inicialização e a tela de abertura podia ficar carregando.

## Correção
- Dashboard inteligente mantido.
- Tela de Contas restaurada como uma área independente.
- Nova conta restaurada.
- Sincronizar restaurado.
- Navegação de mês restaurada.
- Lista de contas restaurada.
- Próximos vencimentos da área de Contas restaurados.
- Referências antigas do resumo foram protegidas para não derrubar o aplicativo.
- Adicionada proteção para a splash screen nunca ficar presa.
- Revisão automática confirmou que não há listener direto apontando para botão inexistente.
- JavaScript validado por verificação de sintaxe.

## SQL
Não há SQL novo.

## Commit changes
FINANCE+ V2.6.1 - corrigir carregamento e restaurar operacao de contas
