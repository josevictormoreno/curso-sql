select * from sales.products where price = (select min(price) from sales.products)

with nova_tabela as (select professional_status, (current_date - birth_date)/365 as idade from sales.customers)
select professional_status, avg(idade) as idade_media from nova_tabela group by professional_status

select fun.visit_id, fun.visit_page_date, sto.store_name, ( 
	select count(*) from sales.funnel as fun2 where fun2.visit_page_date <= fun.visit_page_date and fun2.store_id = fun.store_id
) as visitas acumuladas
from sales.funnel as fun left join sales.storesas sto on fun.store_id = sto.store_id
order by sto.store_name, fun.visit_page_date


-- Exemplos
