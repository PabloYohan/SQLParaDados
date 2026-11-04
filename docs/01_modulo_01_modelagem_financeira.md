# Módulo 1 — O dado em tabelas

> **Trilha:** SQL para Dados · PostgreSQL · Projetos financeiros  
> **Regra:** realize as tarefas por conta própria; use o livro como referência, sem copiar soluções.  
> **Legenda:** [ ] pendente · [x] concluído. Edite os checkboxes no seu editor Markdown.


**Nível desbloqueado:** 1/8 · **Patente:** Arquiteto dos Dados · **Fase:** Fundamentos  
**Miniprojeto:** Estruturando um banco financeiro

## Barra de progresso

- [X] 📖 Estudo e revisão do módulo
- [X] 🧱 Preparação dos dados
- [ ] 🧪 Missões principais
- [ ] ✅ Validação e documentação
- [ ] 🏁 Módulo concluído

**XP:** +10 por missão principal, +20 pela missão bônus e +30 ao concluir e validar.  
**Progresso:** `0/6 missões principais` — atualize manualmente após cada etapa.

## 1. Revisão do conteúdo

- [X] Por que tabela e não planilha
- [X] Modelo relacional: fatos e dimensões
- [X] Tipos de dados e seus riscos
- [X] Chaves primárias e estrangeiras
- [X] Banco transacional vs. analítico

## 2. Preparar o cenário

- [X] Abrir o PostgreSQL e conferir a base de trabalho.
- [X] Ler o enunciado completo antes de escrever SQL.
- [X] Criar uma pasta própria para este módulo.
- [X] Fazer uma pequena previsão dos resultados esperados para testar depois.

## 3. Missões obrigatórias

- [X] Desenhar o relacionamento entre `contas`, `categorias`, `transacoes`.
- [X] Criar as quatro tabelas no PostgreSQL, com PKs e FKs coerentes.
- [X] Escolher tipos adequados para valores monetários, datas, textos e identificadores e justificar no README.
- [ ] Cadastrar pelo menos 3 contas, 6 categorias, 8 clientes e 30 transações fictícias.
- [ ] Testar uma inserção com chave estrangeira inexistente e registrar o comportamento do banco.
- [ ] Descrever por que a modelagem serve ao uso transacional e como poderia alimentar relatórios analíticos.

## 4. Missão bônus (opcional)

- [X] ⭐ Identificar um risco de qualidade dos dados e criar uma restrição SQL para preveni-lo.

## 5. Checklist de qualidade

- [ ] Executei cada consulta sem erro.
- [ ] Comparei os resultados com valores conhecidos ou verificações independentes.
- [ ] Registrei no README minhas escolhas, hipóteses e eventuais limitações.
- [ ] Organizei os scripts para que outra pessoa consiga reproduzir o projeto.
- [ ] Não usei soluções prontas sem compreender o raciocínio.

## 6. Entrega e desbloqueio

**Arquivos esperados:** `schema.sql, seed.sql e README.md`.

**Critério para avançar:** O banco aceita os dados válidos, protege relacionamentos e permite reconstruir as operações sem duplicidades.

- [ ] 🏆 Concluí as missões obrigatórias e cumpri o critério de avanço.

**Reflexão (preencha):**

- O que aprendi: _..._
- Onde tive dificuldade: _..._
- Como validei o resultado: _..._
- Pontuação (XP): _..._

**Próxima etapa:** Módulo 2.
