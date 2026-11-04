# SQL para Dados — Trilha prática de projetos

Este pacote acompanha os **7 módulos do EPUB SQL para Dados**, preservando a progressão conceitual e transformando cada módulo em um miniprojeto de finanças. O projeto final integra todos os temas.

## Quadro de progresso

- [X] 01 — O dado em tabelas · Arquiteto dos Dados
- [ ] 02 — Consultando de verdade · Explorador de Dados
- [ ] 03 — Juntando dados · Investigador Financeiro
- [ ] 04 — Subconsultas e CTE · Analista de Resultados
- [ ] 05 — Funções de janela · Especialista em Tendências
- [ ] 06 — Agregação analítica e tempo · Cientista de Negócios
- [ ] 07 — Desempenho e escala · Guardião da Qualidade
- [ ] 08 — Projeto final · Analista Financeiro SQL

## Como usar

1. Abra os arquivos na ordem numérica, um por módulo.
2. Marque `[x]` à medida que concluir aulas, missões, validação e entregas.
3. Guarde seu SQL em uma pasta separada por módulo; os `.md` são enunciados, não gabaritos.
4. Use uma **base fictícia evolutiva**: nos módulos seguintes, estenda as tabelas e dados criados anteriormente.
5. Só marque o módulo como concluído depois de atender seu critério de avanço.

## Sistema de progresso

- **Missão principal:** 10 XP cada.
- **Missão bônus (opcional):** 20 XP.
- **Conclusão validada de módulo:** 30 XP.
- **Projeto final concluído:** 300 XP.

O XP é uma motivação simbólica: os checkboxes e a qualidade das evidências definem a conclusão real.

## Arquivos

- [01_modulo_01_modelagem_financeira](./01_modulo_01_modelagem_financeira.md)
- [02_modulo_02_explorador_transacoes](./02_modulo_02_explorador_transacoes.md)
- [03_modulo_03_auditoria_pagamentos](./03_modulo_03_auditoria_pagamentos.md)
- [04_modulo_04_relatorio_resultados](./04_modulo_04_relatorio_resultados.md)
- [05_modulo_05_evolucao_financeira](./05_modulo_05_evolucao_financeira.md)
- [06_modulo_06_inteligencia_clientes](./06_modulo_06_inteligencia_clientes.md)
- [07_modulo_07_performance_qualidade](./07_modulo_07_performance_qualidade.md)
- [08_projeto_final_finance_analytics](./08_projeto_final_finance_analytics.md)

## Convenções recomendadas

- Banco: PostgreSQL. Valores monetários: tipo decimal exato (`NUMERIC`), não ponto flutuante.
- Dados: sintéticos; nunca use credenciais ou dados reais de clientes.
- SQL: com nomes legíveis, comentários curtos e testes reproduzíveis.
- Regras temporais: escolha e documente a data relevante para cada métrica.

**Nota:** os objetivos e enunciados são exercícios autorais elaborados a partir dos tópicos do livro, não reprodução de seus exercícios ou gabaritos.
