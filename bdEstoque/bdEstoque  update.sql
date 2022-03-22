USE bdEstoque
--1
UPDATE tbProduto 
SET valorProduto = valorProduto + (valorProduto * 0.1)
WHERE idFabricante = 1

--2
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.02)
WHERE idFabricante = 2

--3 
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE idProduto = 1

SELECT * FROM tbProduto

--4
UPDATE tbCliente 
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE idCliente = 5

SELECT * FROM tbCliente

--5
UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda + (valorTotalVenda * 0.05)
WHERE dataVenda BETWEEN '01/02/2014' AND '28/02/2014'


SELECT * FROM tbVenda

--6
DELETE FROM tbItensVenda
WHERE idProduto = 5 

SELECT * FROM tbItensVenda

--7
UPDATE tbCliente
SET sexoCliente = 'fem'
WHERE idCliente IN (2, 4, 5)

--8
UPDATE tbCliente
SET sexoCliente = 'masc'
WHERE idCliente IN (1, 3, 6)

SELECT * FROM tbCliente

--9
UPDATE tbCliente
SET emailCliente = 'asantana@ig.com.br'
WHERE idCliente = 1

--10
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - (quantidadeProduto * 0.1)
WHERE idFabricante = 1

--11
UPDATE tbProduto
SET valorProduto = valorProduto + ( valorProduto * 0.5)
WHERE descricaoProduto LIKE '%Amaciante%'

--12
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.1)
WHERE descricaoProduto LIKE '%Sadia%'

--13
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto * 0.1)
WHERE descricaoProduto LIKE '%Seda%'

--14
DELETE FROM tbCliente
WHERE idCliente = 2

--Não consegui apagar o registro pois a cliente Sheila está vinculada a outras tabelas

SELECT * FROM tbCliente
