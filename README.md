# FINANCE+ V2.7.1 — Correção do botão Instalar aplicativo

## Correção
- Restaurado o botão inteligente “Instalar aplicativo”.
- O botão só aparece quando o navegador realmente disponibiliza a instalação PWA.
- Depois que o FINANCE+ já está instalado, o botão some automaticamente.
- Em celular, o botão fica compacto para não ocupar espaço do cabeçalho.
- Mantido o modo offline da V2.7.
- Mantido o Dashboard inteligente.
- Mantida a barra inferior com 8 itens.

## Importante
No Chrome/Edge, o evento de instalação normalmente só aparece quando:
- o site está em HTTPS;
- o manifest está válido;
- o Service Worker está ativo;
- o app ainda não está instalado.

No iPhone/iPad, o Safari não oferece o mesmo `beforeinstallprompt`; a instalação é feita por Compartilhar → Adicionar à Tela de Início.

## SQL
Nenhum SQL novo.

## Commit changes
FINANCE+ V2.7.1 - restaurar botao inteligente de instalar aplicativo
