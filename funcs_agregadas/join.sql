-- COMANDO LEFT, RIGHT, INNER, FULL

select t1.cpf, t1.name, t2.state from temp_tables.tabela_1 as t1 left join temp_tables.tabela_2 as t2 on t1.cpf = t2.cpf
select t1.cpf, t1.name, t2.state from temp_tables.tabela_1 as t1 inner join temp_tables.tabela_2 as t2 on t1.cpf = t2.cpf
select t2.cpf, t1.name, t2.state from temp_tables.tabela_1 as t1 right join temp_tables.tabela_2 as t2 on t1.cpf = t2.cpf
select t1.cpf, t1.name, t2.state from temp_tables.tabela_1 as t1 full join temp_tables.tabela_2 as t2 on t1.cpf = t2.cpf
select ibge.gender, count(fun.paid_date) from sales.funnel as fun left join sales.customers as cus on fun.customer_id = cus.customer_id 
  left join temp_tables.ibge_genders as ibge on lower(cus.first_name) = ibge.first_name group by ibge.gender

select reg.region, count(un.visit_page_date) as visitas
from sales.funnel as fun left join sales.customers as cus on fun.customer_id = cus.customer_id left join temp_tables.regions as reg
on lower(cus.city) = lower(reg.city) and lower(cus.state) = lower(reg.state)
group by reg.region
order by visitas

select brand, count(*) as visitas from sales.products as prod left join sales.funnel as fun on 
prod.product_id = fun.product_id
group by brand
order by visitas desc