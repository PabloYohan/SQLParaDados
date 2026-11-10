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

--08
select * from "transaction" t where value = 0;

select * from account a where a.initial_balance = 0;

--09
select t.id, t.description, t.value from "transaction" t 
inner join category c 
on t.category_id = c.id
where c."type" = 'EXPENSE'
order by t.value desc, t.id
limit 5;

--10
select t.id, t.description, t.value from "transaction" t 
inner join category c 
on t.category_id = c.id
where c."type" = 'INCOME'
and t.date >= '2026-01-01' and t.date < '2026-02-01'
order by t.value asc, t.id
limit 3;

--11
select c."type" as Type, 
count(*) as quantidade,
sum(t.value) as total,
max(t.value) as maxvalue,
min(t.value) as minvalue,
AVG(t.value) as media
from "transaction" t 
inner join category c 
on t.category_id = c.id
group by c."type";

--12
select c."name" as Type, 
count(*) as quantidade,
sum(t.value) as total
from "transaction" t 
inner join category c 
on t.category_id = c.id
where c."type" = 'EXPENSE'
group by c."name"
order by total desc, c."name";

--13
select c."name" as categoria,
sum(t.value) as total
from "transaction" t 
inner join category c 
on t.category_id = c.id
where c."type" = 'EXPENSE'
and t.date >= '2026-01-01' and t.date < '2026-04-01'
group by c."name"
having sum(t.value) > 1000.00
order by total desc, c."name";

--14
select
sum(t.value) as total
from "transaction" t 
inner join category c 
on t.category_id = c.id
where c."type" = 'EXPENSE'
and t.date >= '2026-02-01' and t.date < '2026-03-01';

select c."name" as categoria,
sum(t.value) as total
from "transaction" t 
inner join category c 
on t.category_id = c.id
where c."type" = 'EXPENSE'
and t.date >= '2026-02-01' and t.date < '2026-03-01'
group by c."name"
order by total desc, c."name";