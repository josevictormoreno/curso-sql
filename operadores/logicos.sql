-- Operadores lógicos

select model, price from sales.products where price between 50000 and 100000 order by price
select model, price from sales.products where price not between 50000 and 100000 order by price
select model, brand from sales.products where brand not in ('HONDA', 'FIAT') order by price
select distinct first_name from sales.customers where first_name like ('ANA%')
select distinct first_name from sales.customers where first_name ilike ('ana%')
select * from temp_tables.regions where population is null