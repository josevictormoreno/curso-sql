-- COMANDO current_date, as e aritméticos

-- A ordem dos comandos é importante
select first_name, (current_date - birth_date) / 365 as idade from sales.customers order by idade  limit 10
-- Retorno: Nome, idade

select first_name ||  ' ' || last_name as nome_completo from sales.customers
-- Retorno Nome Sobrenome