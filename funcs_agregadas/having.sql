-- COMANDO HAVING 

-- Semelhante ao where, mas o comando having tambem pode filtrar funções agregadas
select state, count(*) from sales.customers group by state having count(*) > 1000
select state, count(*) from sales.customers group by state having count(*) > 100 and state <> 'SP'
select * from sales.customers where income = (select max(income) from sales.customers)
