-- COMANDO GROUP BY

select state, count(*) from sales.customers group by state
select state, professional_status, count(*) as contagem from sales.customers group by state, professional_status order by contagem

-- Se utilizado sem uma função de agregação o group by funciona com o comando ditinct, removendo as linhas duplicadas
select state from sales.customers group by state