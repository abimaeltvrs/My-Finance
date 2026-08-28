# FINANCE+ V2.4.2 — Correção estrutural do menu inferior

## Problema encontrado
A barra nova estava sendo inserida dentro da área “Compras e parcelas”.
Ao mesmo tempo, o menu antigo continuava no rodapé. Por isso o celular ainda mostrava:
- poucos ícones,
- Receitas em uma segunda linha,
- Perfil e Configurações ausentes.

## Correção
- Menu antigo removido.
- Barra nova movida para o local correto, fora do conteúdo das telas.
- Existe agora apenas uma barra inferior.
- 8 itens em uma única linha:
  Início, Contas, Cartões, Receitas, Calendário, Relatórios, Perfil e Config.
- Ícones SVG são carregados diretamente em cada item.
- Barra fixa em toda a aplicação.
- Sem quebra de linha.
- Sem rolagem horizontal.
- Área Compras e parcelas restaurada.

## SQL
Não há SQL novo.

## Commit changes
FINANCE+ V2.4.2 - corrigir estrutura real do menu inferior
