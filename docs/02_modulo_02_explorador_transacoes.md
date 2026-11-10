# Módulo 2 — Consultando de verdade

> **Trilha:** SQL para Dados · PostgreSQL · Projetos financeiros  
> **Regra:** realize as tarefas por conta própria; use o livro como referência, sem copiar soluções.  
> **Legenda:** [ ] pendente · [x] concluído. Edite os checkboxes no seu editor Markdown.


**Nível desbloqueado:** 2/8 · **Patente:** Explorador de Dados · **Fase:** Fundamentos  
**Miniprojeto:** Explorador de transações

## Barra de progresso

- [X] 📖 Estudo e revisão do módulo
- [X] 🧱 Preparação dos dados
- [ ] 🧪 Missões principais
- [ ] ✅ Validação e documentação
- [ ] 🏁 Módulo concluído

**XP:** +10 por missão principal, +20 pela missão bônus e +30 ao concluir e validar.  
**Progresso:** `0/6 missões principais` — atualize manualmente após cada etapa.

## 1. Revisão do conteúdo

- [X] SELECT e projeção
- [X] WHERE e tratamento de NULL
- [X] ORDER BY e LIMIT
- [X] COUNT, SUM, AVG, MIN e MAX
- [ ] GROUP BY e HAVING

## 2. Preparar o cenário

- [X] Abrir o PostgreSQL e conferir a base de trabalho.
- [X] Ler o enunciado completo antes de escrever SQL.
- [X] Criar uma pasta própria para este módulo.
- [X] Fazer uma pequena previsão dos resultados esperados para testar depois.

## 3. Missões obrigatórias

**Regras do desafio:** use as transações da base preparada. Considere `receita` e `despesa` como tipos lógicos; adapte os nomes das colunas ao seu esquema. Para os exercícios com datas fixas, inclua no seu conjunto de testes transações em janeiro, fevereiro e março de 2026, ao menos duas contas e duas categorias de despesa. Não utilize respostas SQL prontas.

- [X] **01 — Projeção inicial:** retorne data, descrição e valor de todas as transações, nessa ordem. Não utilize `SELECT *`; confira se nenhuma coluna extra aparece.
- [X] **02 — Recorte fechado:** liste as transações ocorridas entre 01/01/2026 (inclusive) e 01/02/2026 (exclusive), mostrando identificador, data, descrição e valor. Inclua uma transação em cada limite e confira qual entra.
- [X] **03 — Conta específica:** encontre somente os lançamentos de uma conta que você selecionar pelo identificador. Exiba também o identificador da conta e conte quantos registros correspondem.
- [X] **04 — Tipo e período:** encontre apenas **despesas** de fevereiro de 2026. Retorne data, descrição e valor, ordenados da mais recente para a mais antiga; em empate, use o ID.
- [X] **05 — Filtros combinados:** na mesma consulta, selecione **despesas de fevereiro de 2026** da conta escolhida na missão 03. Verifique que nenhuma linha viola qualquer uma das três condições.
- [X] **06 — Valores de referência:** localize despesas estritamente superiores a R$ 500,00. Insira ou identifique três casos de teste: R$ 499,99, R$ 500,00 e R$ 500,01; explique quais são retornados.
- [X] **07 — Campos ausentes:** liste transações cuja descrição seja `NULL` e, separadamente, aquelas cuja descrição seja uma string vazia. Prepare um caso de cada e registre por que as listas diferem.
- [ ] **08 — `NULL` versus zero:** procure valores monetários nulos e valores iguais a zero em consultas separadas (crie registros de teste apenas se o esquema permitir). Explique qual caso deve ser considerado dado faltante e qual representa valor registrado.
- [ ] **09 — Ordenação estável:** apresente as **5 maiores despesas** por valor, incluindo ID, descrição e valor. Em valores iguais, desempate pelo ID crescente; execute duas vezes e confira a ordem.
- [ ] **10 — Menores lançamentos:** apresente as **3 menores receitas** de janeiro de 2026, com desempate por ID. Diga se o resultado muda caso existam menos de três receitas.
- [ ] **11 — Indicadores por tipo:** para cada tipo de transação, calcule quantidade de lançamentos, soma, média, mínimo e máximo dos valores. Dê nomes claros às colunas e confira a soma manualmente para um tipo.
- [ ] **12 — Categorias de despesas:** agrupe as despesas por categoria e retorne quantidade de transações e total por categoria; ordene pelo total decrescente, com um critério de desempate explícito.
- [ ] **13 — Filtro antes/depois do agrupamento:** para **despesas de janeiro a março de 2026**, mostre somente categorias cujo total seja **maior que R$ 1.000,00**. Use `WHERE` para o intervalo e o tipo, e `HAVING` para o limite agregado; explique por que não basta um filtro sobre cada transação.
- [ ] **14 — Conferência de totais:** compare a soma de todas as despesas de fevereiro de 2026 com a soma dos totais agrupados por categoria no mesmo período. Registre o resultado e explique eventual diferença se houver categorias `NULL`.

## 4. Missão bônus (opcional)

- [ ] ⭐ **B1 — Contagem com ausências:** em um grupo de 5 transações de teste, deixe exatamente 2 descrições como `NULL`. Retorne `COUNT(*)` e `COUNT(descricao)` no mesmo resultado e explique os números 5 e 3.
- [ ] ⭐ **B2 — Categorias sem classificação:** mostre, para fevereiro de 2026, o total de despesas com categoria `NULL` separado do total das categorias preenchidas. Confira se os dois totais recompõem o total geral do mês.
- [ ] ⭐ **B3 — Limites e precedência:** monte uma consulta que retorne despesas acima de R$ 300,00 da conta A **ou** receitas acima de R$ 1.000,00 da conta B, somente em março de 2026. Use parênteses e crie um caso de teste fora de março para detectar uma condição `OR` mal agrupada.

## 5. Checklist de qualidade

- [ ] Executei cada consulta sem erro.
- [ ] Comparei os resultados com valores conhecidos ou verificações independentes.
- [ ] Registrei no README minhas escolhas, hipóteses e eventuais limitações.
- [ ] Organizei os scripts para que outra pessoa consiga reproduzir o projeto.
- [ ] Não usei soluções prontas sem compreender o raciocínio.

## 6. Entrega e desbloqueio

**Arquivos esperados:** `consultas_modulo_02.sql e README.md`.

**Critério para avançar:** Todas as consultas retornam valores verificáveis manualmente e nenhuma depende de ordem implícita.

- [ ] 🏆 Concluí as missões obrigatórias e cumpri o critério de avanço.

**Reflexão (preencha):**

- O que aprendi: _..._
- Onde tive dificuldade: _..._
- Como validei o resultado: _..._
- Pontuação (XP): _..._

**Próxima etapa:** Módulo 3.
