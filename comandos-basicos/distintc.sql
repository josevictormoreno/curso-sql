
-- COMANDO DISTINTC
SELECT DISTINCT * from sales.customers
SELECT DISTINCT email from sales.customers -- busca por emails, sem repetir, na tabela de customers
SELECT DISTINCT first_name from sales.customers -- busca por nomes, sem repetir, na tabela de customers
SELECT DISTINCT brand from sales.customers -- busca por marcas, sem repetir, na tabela products
SELECT DISTINCT model from sales.products -- busca por modelos, sem repetir, na tabela products
SELECT DISTINCT brand, model from sales.products -- busca por modelos e marcas, sem repetir na tabela products