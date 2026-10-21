1.
USE vendas_informatica;
UPDATE cliente
SET email = 'email@email.com.br'
WHERE estado IN ('SP' , 'RJ');

2.
USE vendas_informatica;
UPDATE cliente
SET data_cadastro = "2026-01-01"
WHERE cidade = "Manaus";

3.
USE vendas_informatica;
UPDATE cliente
SET nome_cliente = "Michel B.Jordan"
WHERE id_cliente = 10;

4.
USE vendas_informatica;
UPDATE produto
SET nome_produto = "Notebook Lenovo IdeaPad 7"
WHERE id_produto = 1;

5.
USE vendas_informatica;
UPDATE produto
SET preco_unitario = 4999.99
WHERE marca = "DELL"
AND categoria = "Notebook";

6.
USE vendas_informatica;
UPDATE venda
SET desconto_percentual = 0.01
WHERE quantidade >= 2;





