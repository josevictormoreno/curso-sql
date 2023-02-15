-- COMANDO WHERE

SELECT first_name from sales.customers where score>400 -- busca clientes com score maior que 400
SELECT first_name from sales.customers where customers_id>10 -- busca clientes com id maior que 10
SELECT model from sales.products where brand='FIAT' -- busca por modelos da marca fiat
SELECT model from sales.products where price<50000 -- busca por modelos com preço menor que 50 mil