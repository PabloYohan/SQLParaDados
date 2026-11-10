-- 01
select date, description, value from "transaction" t;

-- 02
select * from "transaction" t where t.date >= DATE '2026-01-01' and t.date < DATE '2026-02-01';

-- 03
select t.*, COUNT(*) OVER() AS total_transacoes 
from "transaction" t 
where t.account_id = '20000000-0000-4000-8000-000000000001';

-- 04
select t.date, t.description, t.value from "transaction" t
inner join "category" c
on t.category_id = c.id 
where (t."date" >= '2026-02-01' and t."date" < '2026-03-01') and c."type" = 'EXPENSE'
order by t.date DESC, t.id;

-- 05
select t.date, t.description, t.value from "transaction" t
inner join "category" c
on t.category_id = c.id 
where (t."date" >= '2026-02-01' and t."date" < '2026-03-01')
and c."type" = 'EXPENSE'
and t.account_id = '20000000-0000-4000-8000-000000000001'
order by t.date DESC, t.id;

-- 06
select t.date, t.description, t.value from "transaction" as t
inner join category c 
on t.category_id = c.id 
where t.value > 500.00
and c.type = 'EXPENSE';

--07
select * from "transaction" t 
where t.description is null;

select * from "transaction" t 
where t.description = '';