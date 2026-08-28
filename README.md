# FINANCE+ V2.9 — Cartões personalizados + Receitas a Receber

## 1. Cor do cartão
No cadastro e na edição do cartão agora é possível escolher entre:
- roxo
- azul
- verde
- vermelho
- laranja
- preto
- cinza
- dourado

A cor aparece na lista de cartões e no Perfil do cartão.

## 2. Receitas a receber
Toda nova receita passa a ser criada como PENDENTE.

O cadastro possui “Repetir por quantos meses?”.
Exemplo: R$ 1.000, data 10/09 e 5x cria:
1/5 em 10/09
2/5 em 10/10
3/5 em 10/11
4/5 em 10/12
5/5 em 10/01

Cada ocorrência fica independente e PENDENTE.

## 3. Confirmação
Na lista de receitas:
- PENDENTE → botão “Marcar recebido”
- RECEBIDO → entra no total de receitas efetivamente recebidas
- É possível voltar uma receita para pendente em caso de engano.

## 4. Dashboard
Agora separa:
- Receitas recebidas
- Receitas pendentes / a receber
- Despesas pagas
- Disponível

A previsão de fim do mês considera:
saldo atual + receitas pendentes - contas pendentes - faturas abertas.

Receitas pendentes também aparecem nos próximos compromissos do mês.

## Banco de dados
Execute `SUPABASE_V2.9.sql` uma vez antes de usar esta versão.

## Commit changes
FINANCE+ V2.9 - adicionar cores nos cartoes e receitas recorrentes pendentes
