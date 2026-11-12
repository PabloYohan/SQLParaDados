# Módulo 3 — Juntando dados

> **Trilha:** SQL para Dados · PostgreSQL · Projetos financeiros  
> **Regra:** realize as tarefas por conta própria; use o livro como referência, sem copiar soluções.  
> **Legenda:** [ ] pendente · [x] concluído. Edite os checkboxes no seu editor Markdown.


**Nível desbloqueado:** 3/8 · **Patente:** Investigador Financeiro · **Fase:** Análise  
**Miniprojeto:** Auditoria de pagamentos

## Barra de progresso

- [ ] 📖 Estudo e revisão do módulo
- [ ] 🧱 Preparação dos dados
- [ ] 🧪 Missões principais
- [ ] ✅ Validação e documentação
- [ ] 🏁 Módulo concluído

**XP:** +10 por missão principal, +20 pela missão bônus e +30 ao concluir e validar.  
**Progresso:** `0/6 missões principais` — atualize manualmente após cada etapa.

## 1. Revisão do conteúdo

- [ ] Cardinalidade das junções
- [ ] INNER JOIN e LEFT JOIN
- [ ] Multiplicação de linhas
- [ ] EXISTS e NOT EXISTS
- [ ] NULL e filtros em junções externas

## 2. Preparar o cenário

- [ ] Abrir o PostgreSQL e conferir a base de trabalho. (Seed Módulo 2)
- [ ] Ler o enunciado completo antes de escrever SQL.
- [ ] Criar uma pasta própria para este módulo.
- [ ] Fazer uma pequena previsão dos resultados esperados para testar depois.

## 3. Missões obrigatórias

**Cenário auditável:** amplie a base com `titulos_pagar` e `pagamentos`; cada pagamento referencia um título, e um título admite várias baixas. Use ao menos os casos abaixo e preserve os IDs para conferência: título **A = R$ 1.000,00** com pagamentos de **R$ 400,00 e R$ 350,00**; **B = R$ 600,00** com pagamento de **R$ 600,00**; **C = R$ 800,00** sem pagamentos; **D = R$ 500,00** com dois pagamentos de **R$ 250,00**. Use uma data de referência fixa (por exemplo, 31/03/2026) para testar vencimentos. Não inclua lançamentos duplicados no cenário inicial.

- [X] **01 — Relacionamento:** crie as tabelas com PK e FK de `pagamentos` para `titulos_pagar`; documente a cardinalidade 1:N e os campos necessários para valor e data.
- [ ] **02 — Dados de teste:** registre os quatro títulos A–D e as cinco baixas descritas no cenário. Confira que o nominal soma **R$ 2.900,00** e os pagamentos somam **R$ 1.850,00**.
- [ ] **03 — Junção interna:** liste ID do título, valor nominal, ID do pagamento, data e valor pago usando `INNER JOIN`. Anote qual título não aparece e por quê.
- [ ] **04 — Junção externa:** repita a lista anterior com `LEFT JOIN` e preserve o título C. Explique os `NULL` nas colunas de pagamento desse registro.
- [ ] **05 — Total por título:** produza uma linha por título com ID, valor nominal, total pago e saldo aberto. Resultados esperados: A **R$ 250,00**, B **R$ 0,00**, C **R$ 800,00**, D **R$ 0,00**.
- [ ] **06 — Evitar multiplicação:** demonstre, em uma consulta separada, que somar o valor nominal após uma junção 1:N infla o resultado; depois apresente uma abordagem que preserve o nominal de **R$ 2.900,00**.
- [ ] **07 — Sem baixas:** encontre títulos que nunca receberam pagamento com `NOT EXISTS`. O resultado deve incluir C e excluir A, B e D.
- [ ] **08 — Com baixas:** encontre títulos que possuam ao menos um pagamento usando `EXISTS`, retornando **uma única linha por título**. Confirme que A, B e D aparecem uma vez cada.
- [ ] **09 — Situação financeira:** classifique cada título como `sem pagamento`, `parcial` ou `quitado` com base nos valores efetivamente pagos. Confira os estados de A, B, C e D.
- [ ] **10 — Atrasos:** defina o vencimento de A e C antes de 31/03/2026 e o de B e D depois dessa data. Liste os títulos com **saldo aberto maior que zero e vencimento anterior a 31/03/2026**; valide A e C.
- [ ] **11 — `COUNT` no `LEFT JOIN`:** conte, por título, linhas do resultado e IDs de pagamentos não nulos. Demonstre por que C tem `COUNT(*) = 1`, mas `COUNT(p.id) = 0`.
- [ ] **12 — Filtro em `ON` versus `WHERE`:** filtre pagamentos a partir de 01/03/2026 em duas versões de `LEFT JOIN`: condição no `ON` e condição no `WHERE`. Crie ao menos um título sem pagamento nesse intervalo; compare quais títulos sobrevivem.
- [ ] **13 — Conciliação geral:** retorne em uma consulta o total nominal (**R$ 2.900,00**), o pago (**R$ 1.850,00**) e o aberto (**R$ 1.050,00**) sem duplicar títulos; registre como conferiu os três valores.

## 4. Missão bônus (opcional)

- [ ] ⭐ **B1 — Duplicidade simulada:** adicione, em ambiente de teste, um segundo pagamento com o mesmo título, data, valor e identificador externo de outro pagamento. Crie uma consulta que sinalize pares suspeitos sem excluir registros; explique por que valores iguais, isoladamente, não provam duplicidade.
- [ ] ⭐ **B2 — Pagamento excedente:** crie o título E de **R$ 300,00** com baixas de **R$ 200,00 + R$ 150,00**. Liste títulos cuja soma paga ultrapassa o nominal e exiba o excesso (**R$ 50,00** para E).
- [ ] ⭐ **B3 — Fornecedor sem títulos:** com uma tabela de fornecedores relacionada, inclua um fornecedor ainda sem títulos. Liste todos os fornecedores e sua quantidade de títulos, preservando o fornecedor sem movimento com total zero.

## 5. Checklist de qualidade

- [ ] Executei cada consulta sem erro.
- [ ] Comparei os resultados com valores conhecidos ou verificações independentes.
- [ ] Registrei no README minhas escolhas, hipóteses e eventuais limitações.
- [ ] Organizei os scripts para que outra pessoa consiga reproduzir o projeto.
- [ ] Não usei soluções prontas sem compreender o raciocínio.

## 6. Entrega e desbloqueio

**Arquivos esperados:** `alteracoes_schema.sql, seed_modulo_03.sql, auditoria.sql e README.md`.

**Critério para avançar:** O total nominal e o total pago conciliam com a base original, e títulos sem pagamento permanecem no resultado.

- [ ] 🏆 Concluí as missões obrigatórias e cumpri o critério de avanço.

**Próxima etapa:** Módulo 4.
