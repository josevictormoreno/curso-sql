-- Comandos de agregação

select count(*) from sales.funnel
select count(paid_date) from sales.funnel
select count(distinct product_id) from sales.funnel where visit_page between '2021-01-01' and '2021-01-31'
select min(price), max(price), avg(price) from sales.products
select * from sales.products where price = (select max(price) from sales.products)