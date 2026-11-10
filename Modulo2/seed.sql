-- SEED FINANCEIRO PARA ESTUDOS DE POSTGRESQL
-- Compativel com o schema fornecido: category, account, transaction.
-- Periodo: janeiro/2025 a outubro/2026 (22 meses).
-- Reexecutavel: IDs deterministicos e ON CONFLICT DO NOTHING.
-- ATENCAO: use apenas em um banco de estudos.

BEGIN;

INSERT INTO category (id, name, type, active) VALUES
('10000000-0000-4000-8000-000000000001','Salario','INCOME',TRUE),
('10000000-0000-4000-8000-000000000002','Freelance','INCOME',TRUE),
('10000000-0000-4000-8000-000000000003','Rendimentos','INCOME',TRUE),
('10000000-0000-4000-8000-000000000004','Reembolsos','INCOME',TRUE),
('10000000-0000-4000-8000-000000000005','Presentes recebidos','INCOME',FALSE),
('10000000-0000-4000-8000-000000000006','Moradia','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000007','Supermercado','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000008','Restaurantes','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000009','Transporte','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000010','Saude','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000011','Educacao','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000012','Lazer','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000013','Assinaturas','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000014','Compras','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000015','Impostos','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000016','Viagens','EXPENSE',TRUE),
('10000000-0000-4000-8000-000000000017','Outros','EXPENSE',FALSE)
ON CONFLICT (id) DO NOTHING;

INSERT INTO account (id, name, type, initial_balance, active) VALUES
('20000000-0000-4000-8000-000000000001','Banco Principal','CHECKING',3500.00,TRUE),
('20000000-0000-4000-8000-000000000002','Conta Digital','PAYMENT',900.00,TRUE),
('20000000-0000-4000-8000-000000000003','Carteira','CASH',250.00,TRUE),
('20000000-0000-4000-8000-000000000004','Poupanca','SAVINGS',8000.00,TRUE),
('20000000-0000-4000-8000-000000000005','Corretora','INVESTMENT',15000.00,TRUE),
('20000000-0000-4000-8000-000000000006','Conta Antiga','CHECKING',100.00,FALSE)
ON CONFLICT (id) DO NOTHING;

-- Cada linha abaixo representa um padrao mensal.
-- quantity = numero de lancamentos gerados por mes.
-- start_month/end_month permitem entradas e saidas de habitos ao longo do tempo.
-- variation_pct controla diferencas deterministicas no valor (0.00 a 1.00).
WITH patterns (pattern_id, category_n, account_n, description, base_value, quantity, day_start, variation_pct, start_month, end_month) AS (
  VALUES
  ( 1,  1, 1, 'Salario mensal',               6200.00, 1,  5, 0.00,  1, 22),
  ( 2,  2, 2, 'Projeto freelance',             900.00, 1, 13, 0.55,  1, 22),
  ( 3,  3, 4, 'Rendimento poupanca',            44.00, 1, 27, 0.40,  1, 22),
  ( 4,  3, 5, 'Rendimento investimentos',      120.00, 1, 28, 0.60,  1, 22),
  ( 5,  4, 1, 'Reembolso eventual',             90.00, 1, 19, 0.50,  1, 22),
  ( 6,  6, 1, 'Aluguel',                      1700.00, 1,  8, 0.00,  1, 22),
  ( 7,  6, 1, 'Conta de energia',              190.00, 1, 12, 0.35,  1, 22),
  ( 8,  6, 1, 'Agua e saneamento',              92.00, 1, 14, 0.25,  1, 22),
  ( 9,  7, 1, 'Compras supermercado',          240.00, 3,  3, 0.55,  1, 22),
  (10,  7, 2, 'Feira e hortifruti',             95.00, 2,  7, 0.40,  1, 22),
  (11,  8, 2, 'Almoco restaurante',             62.00, 3,  4, 0.55,  1, 22),
  (12,  8, 3, 'Cafe e lanche',                  24.00, 3,  2, 0.50,  1, 22),
  (13,  9, 1, 'Combustivel',                   180.00, 2,  6, 0.35,  1, 22),
  (14,  9, 2, 'Aplicativo de transporte',       27.00, 3,  5, 0.75,  1, 22),
  (15, 10, 1, 'Farmacia',                       78.00, 1, 16, 0.70,  1, 22),
  (16, 11, 1, 'Curso online',                  119.00, 1, 17, 0.00,  1, 22),
  (17, 12, 2, 'Cinema e lazer',                 90.00, 2, 11, 0.65,  1, 22),
  (18, 13, 2, 'Streaming',                      39.90, 1, 10, 0.00,  1, 22),
  (19, 13, 2, 'Musica digital',                 21.90, 1, 11, 0.00,  1, 22),
  (20, 14, 2, 'Compras online',                155.00, 2,  9, 0.85,  1, 22),
  (21, 15, 1, 'Tributos e taxas',              115.00, 1, 22, 0.35,  1, 22),
  (22, 16, 1, 'Passeios e viagens',            680.00, 1, 21, 0.90,  1, 22),
  (23, 10, 1, 'Consulta medica',               220.00, 1, 18, 0.30,  7, 22),
  (24, 11, 2, 'Livros tecnicos',                85.00, 1, 20, 0.60,  4, 22),
  (25,  2, 1, 'Consultoria pontual',          1300.00, 1, 24, 0.60, 10, 22)
),
months AS (
  SELECT g.month_n,
         (DATE '2025-01-01' + ((g.month_n - 1) || ' months')::interval)::date AS month_start
  FROM generate_series(1, 22) AS g(month_n)
),
expanded AS (
  SELECT p.*, m.month_n, m.month_start, seq.item_n
  FROM patterns p
  JOIN months m ON m.month_n BETWEEN p.start_month AND p.end_month
  CROSS JOIN LATERAL generate_series(1, p.quantity) AS seq(item_n)
),
calculated AS (
  SELECT e.*,
         (('x' || substr(md5(e.pattern_id::text || ':' || e.month_n || ':' || e.item_n),1,8))::bit(32)::bigint % 10001)::numeric / 10000 AS variation_factor,
         (e.day_start + ((e.item_n - 1) * 7))::int AS day_of_month
  FROM expanded e
)
INSERT INTO transaction (id, category_id, account_id, description, value, date)
SELECT
  md5('finance-study:' || pattern_id || ':' || month_n || ':' || item_n)::uuid,
  ('10000000-0000-4000-8000-' || lpad(category_n::text,12,'0'))::uuid,
  ('20000000-0000-4000-8000-' || lpad(account_n::text,12,'0'))::uuid,
  description,
  round((base_value * (1 + variation_pct * (variation_factor * 2 - 1)))::numeric, 2),
  (month_start + (least(day_of_month, extract(day FROM (month_start + interval '1 month - 1 day'))::int) - 1))::timestamp AT TIME ZONE 'America/Sao_Paulo'
FROM calculated
ON CONFLICT (id) DO NOTHING;

-- Eventos extraordinarios: 13o salario, restituição, viagem e emergencias.
WITH special (event_key, category_n, account_n, description, value, event_date) AS (
  VALUES
  ('bonus-2025',         1, 1, 'Decimo terceiro salario',          6200.00, '2025-12-19'::date),
  ('bonus-2026',         1, 1, 'Adiantamento decimo terceiro',     3100.00, '2026-10-30'::date),
  ('tax-refund-2025',    4, 1, 'Restituicao de imposto',           840.00, '2025-08-29'::date),
  ('tax-refund-2026',    4, 1, 'Restituicao de imposto',          1050.00, '2026-08-31'::date),
  ('trip-2025',        16, 1, 'Hospedagem nas ferias',            1850.00, '2025-07-12'::date),
  ('trip-2026',        16, 1, 'Passagens de viagem',              2400.00, '2026-06-18'::date),
  ('repair-2025',      14, 1, 'Conserto de notebook',              780.00, '2025-09-03'::date),
  ('repair-2026',      10, 1, 'Exames de saude',                   620.00, '2026-03-11'::date),
  ('gift-2025',         5, 3, 'Presente de aniversario',           250.00, '2025-04-17'::date),
  ('old-account',      17, 6, 'Tarifa conta antiga',               26.50, '2025-01-23'::date)
)
INSERT INTO transaction (id, category_id, account_id, description, value, date)
SELECT md5('finance-study-special:' || event_key)::uuid,
       ('10000000-0000-4000-8000-' || lpad(category_n::text,12,'0'))::uuid,
       ('20000000-0000-4000-8000-' || lpad(account_n::text,12,'0'))::uuid,
       description, value,
       event_date::timestamp AT TIME ZONE 'America/Sao_Paulo'
FROM special
ON CONFLICT (id) DO NOTHING;

COMMIT;

-- VALIDACOES (execute apos a carga):
-- SELECT COUNT(*) FROM category;            -- 17
-- SELECT COUNT(*) FROM account;             -- 6
-- SELECT COUNT(*) FROM transaction;         -- 806
-- SELECT MIN(date), MAX(date) FROM transaction;
-- SELECT c.type, COUNT(*), SUM(t.value)
-- FROM transaction t JOIN category c ON c.id = t.category_id
-- GROUP BY c.type;
--
-- OBSERVACOES IMPORTANTES:
-- 1. Todas as transacoes tem valor positivo; use category.type para receita/despesa.
-- 2. Transferencias entre contas nao foram modeladas no schema, portanto nao estao no seed.
-- 3. Saldo inicial + receitas - despesas e apenas um exercicio simplificado de saldo.
-- 4. updated_at da tabela account nao se atualiza automaticamente sem trigger.
