INSERT INTO account (id, name, type, initial_balance)
VALUES
('11111111-1111-4111-8111-111111111111', 'Nubank', 'CHECKING', 3500.00),
('22222222-2222-4222-8222-222222222222', 'Itaú Poupança', 'SAVINGS', 8000.00),
('33333333-3333-4333-8333-333333333333', 'Carteira', 'CASH', 500.00);

INSERT INTO category (id, name, type)
VALUES
('aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa1', 'Salário', 'INCOME'),
('aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa2', 'Freelance', 'INCOME'),
('aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa3', 'Rendimentos', 'INCOME'),
('bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb1', 'Alimentação', 'EXPENSE'),
('bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb2', 'Transporte', 'EXPENSE'),
('bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb3', 'Moradia', 'EXPENSE');

INSERT INTO transaction
    (category_id, account_id, description, value, date)
VALUES
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa1',
    '11111111-1111-4111-8111-111111111111',
    'Salário Setembro', 5500.00, '2026-09-05 09:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb3',
    '11111111-1111-4111-8111-111111111111',
    'Aluguel Setembro', 1500.00, '2026-09-06 10:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb1',
    '11111111-1111-4111-8111-111111111111',
    'Supermercado', 480.50, '2026-09-10 15:30:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb2',
    '33333333-3333-4333-8333-333333333333',
    'Combustível', 120.00, '2026-09-12 11:00:00-03'
),
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa2',
    '11111111-1111-4111-8111-111111111111',
    'Projeto Freelancer', 1200.00, '2026-09-20 14:00:00-03'
),
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa3',
    '22222222-2222-4222-8222-222222222222',
    'Rendimento Poupança', 45.80, '2026-09-30 08:00:00-03'
),
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa1',
    '11111111-1111-4111-8111-111111111111',
    'Salário Outubro', 5500.00, '2026-10-05 09:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb3',
    '11111111-1111-4111-8111-111111111111',
    'Aluguel Outubro', 1500.00, '2026-10-06 10:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb1',
    '11111111-1111-4111-8111-111111111111',
    'Supermercado', 620.90, '2026-10-08 16:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb2',
    '33333333-3333-4333-8333-333333333333',
    'Transporte Aplicativo', 35.50, '2026-10-10 20:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb1',
    '33333333-3333-4333-8333-333333333333',
    'Restaurante', 85.00, '2026-10-12 13:00:00-03'
),
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa2',
    '11111111-1111-4111-8111-111111111111',
    'Desenvolvimento de API', 1800.00, '2026-10-18 14:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb2',
    '11111111-1111-4111-8111-111111111111',
    'Combustível', 250.00, '2026-10-22 17:00:00-03'
),
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa3',
    '22222222-2222-4222-8222-222222222222',
    'Rendimento Poupança', 49.30, '2026-10-31 08:00:00-03'
),
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa1',
    '11111111-1111-4111-8111-111111111111',
    'Salário Novembro', 5500.00, '2026-11-05 09:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb3',
    '11111111-1111-4111-8111-111111111111',
    'Aluguel Novembro', 1500.00, '2026-11-06 10:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb1',
    '11111111-1111-4111-8111-111111111111',
    'Supermercado', 540.00, '2026-11-08 15:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb2',
    '33333333-3333-4333-8333-333333333333',
    'Uber', 42.90, '2026-11-10 19:00:00-03'
),
(
    'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaa2',
    '11111111-1111-4111-8111-111111111111',
    'Consultoria de Software', 950.00, '2026-11-15 14:00:00-03'
),
(
    'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbb1',
    '33333333-3333-4333-8333-333333333333',
    'Lanche', 38.50, '2026-11-18 20:00:00-03'
);