# FINANCE+ V3.5 — Investimentos

Novo módulo independente de Mercado & Investimentos.

## Incluído
- Novo item `Invest.` no menu deslizável, depois de Relatórios.
- As quatro opções iniciais continuam: Início, Receitas, Contas e Calendário.
- CDI atualizado pela BrasilAPI.
- Selic atualizada pela BrasilAPI.
- IPCA do último mês oficial disponível via série 433 do Banco Central.
- Data/hora da última atualização.
- Cache local de 6 horas e fallback para o último dado salvo se a fonte estiver temporariamente indisponível.
- Referências de CDB a 100%, 110% e 120% do CDI.
- Simulador de CDB:
  - valor aplicado
  - percentual do CDI
  - prazo de 30 dias a 3 anos
  - valor bruto
  - rendimento bruto
  - IR regressivo estimado
  - valor líquido estimado
- Dicas educativas sobre liquidez, reserva de emergência, % do CDI e FGC.
- Tema claro e escuro.
- Nenhum produto financeiro específico é recomendado.

## Fontes
- BrasilAPI / endpoint de taxas
- Banco Central do Brasil / SGS série 433 (IPCA mensal)

Não há SQL novo.

Commit changes:
FINANCE+ V3.5 - adicionar modulo de investimentos e indicadores ao vivo
