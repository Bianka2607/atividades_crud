1.
USE vendas_informatica;
SELECT * FROM produto;

2.
USE vendas_informatica;
SELECT nome_produto, marca, estoque
FROM produto;

3.
USE vendas_informatica;
SELECT nome_produto, categoria, preco_unitario, data_cadastro
FROM produto
ORDER BY marca ASC;

4. 
USE vendas_informatica;
SELECT nome_produto, marca, categoria , data_cadastro
FROM produto
ORDER BY data_cadastro ASC;

5.
USE vendas_informatica;
SELECT * FROM cliente;

6.
USE vendas_informatica;
SELECT email , cidade , estado
FROM cliente;

7.
USE vendas_informatica;
SELECT nome_cliente, cidade , estado
FROM cliente
ORDER BY estado ASC;

8.
USE vendas_informatica;
SELECT nome_cliente, email , estado , data_cadastro
FROM cliente
ORDER BY data_cadastro ASC;

9.
USE vendas_informatica;
SELECT * FROM vendas;

10.
USE vendas_informatica;
SELECT cliente.nome_cliente, venda.data_venda , venda.preco_unitario_venda ,venda.forma_pagamento
FROM cliente
INNER JOIN venda 
ON venda.id_cliente =cliente.id_cliente;


11.
USE vendas_informatica;
SELECT produto.nome_produto, venda.data_venda, venda.quantidade, venda.status
FROM venda 
INNER JOIN produto 
    ON venda.id_produto = produto.id_produto;

12.1
USE vendas_informatica;
SELECT produto.nome_produto , venda.preco_unitario_venda , venda.forma_pagamento
FROM venda
INNER JOIN produto
ON venda.id_produto = produto.id_produto
WHERE venda.forma_pagamento IN ('PIX', 'Boleto');

12.2
USE vendas_informatica;
SELECT cliente.nome_cliente, produto.nome_produto, venda.data_venda, venda.quantidade
FROM venda
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto
ON venda.id_produto = produto.id_produto;

13.
USE vendas_informatica;
SELECT produto.nome_produto, venda.desconto_percentual, venda.forma_pagamento
FROM venda
INNER JOIN produto
ON venda.id_produto = produto.id_produto
ORDER BY venda.data_venda ASC;

14.
USE vendas_informatica;
SELECT produto.nome_produto , cliente.nome_cliente , venda.desconto_percentual , venda.forma_pagamento , venda.status_venda
FROM venda
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto
ON venda.id_produto = produto.id_produto
ORDER BY venda.status_venda DESC;

15.
USE vendas_informatica;
SELECT  cliente.nome_cliente , cliente.email , produto.nome_produto , produto.marca , produto.categoria , venda.forma_pagamento , venda.status_venda
FROM venda
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto
ON venda.id_produto = produto.id_produto
ORDER BY venda.status_venda DESC;

