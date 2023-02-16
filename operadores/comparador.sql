-- Comparar e criar nova coluna de resultado

select customer_id, first_name, (professional_status = 'clt') as clt from sales.customers order by customer_id limit 10