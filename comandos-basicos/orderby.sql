-- COMMANDO ORDER_BY

select * from sales.customers order by email -- busca todos os dados da tabela customers ordenando por email
select first_name from sales.customers order by state -- busca todos os customers ordenando por state
select brand from sales.products order by price -- busca marcas ordenando por preço
select model from sales.products order by model_year -- busca modelos ordenando por ano do modelo
select model, brand from sales.products order by model_year -- busca modelo e marca ordenando por ano do modelo