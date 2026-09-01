# FINANCE+ V3.7 — Landing pública

Correção da experiência Web para visitantes.

## Regra
Quem acessa o FINANCE+ sem sessão autenticada vê somente a página pública:
- apresentação/propaganda do FINANCE+
- benefícios e principais recursos
- carrossel informativo
- botão de instalação
- login
- criação de conta

A interface financeira real fica completamente oculta até o login:
- Dashboard
- menu inferior
- cartões
- contas
- receitas
- calendário
- relatórios
- investimentos
- configurações

Também foi adicionado um bloqueio visual durante a verificação da sessão para impedir que o Dashboard apareça rapidamente antes do Supabase confirmar se existe usuário autenticado.

Usuários que já possuem uma sessão válida continuam entrando diretamente no aplicativo.

Não há SQL novo.

Commit changes:
FINANCE+ V3.7 - criar landing publica e ocultar area interna antes do login
