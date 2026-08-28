# FINANCE+ V2.7 — Modo Offline

A V2.7 adiciona fila persistente em IndexedDB e sincronização automática.

Funciona offline para novos lançamentos de:
- contas;
- receitas;
- cartões;
- pagamentos de contas.

O cabeçalho mostra Offline, quantidade pendente, Sincronizando ou Sincronizado.
Ao recuperar a conexão, o app envia a fila automaticamente ao Supabase. Os inserts usam IDs gerados antes do envio e `upsert` na sincronização, reduzindo o risco de duplicidade em novas tentativas.

A interface PWA continua sendo mantida pelo Service Worker.

Nesta etapa, compras parceladas, edição e exclusão continuam sendo operações preferencialmente online. Isso evita criar conflitos de edição sem uma estratégia completa de resolução.

Nenhum SQL novo.

Commit changes:
FINANCE+ V2.7 - adicionar modo offline e sincronizacao automatica
