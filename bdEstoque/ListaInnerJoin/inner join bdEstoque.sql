USE bdEstoque

--A)Listar as descrições dos produtos ao lado do nome dos fabricantes;
SELECT descricaoProduto AS 'Descricao', nomeFabricante AS 'Fabricante' FROM tbProduto 
	INNER JOIN tbFabricante ON tbProduto.idFabricante = tbFabricante.idFabricante

--B)Listar as descrições dos produtos ao lado do nome dos fornecedores;
SELECT descricaoProduto AS 'Descricao', nomeFornecedor AS 'Fornecedor' FROM tbProduto
	INNER JOIN tbFornecedor ON tbProduto.idFornecedor = tbFornecedor.idFornecedor

--C)Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;
SELECT nomeFabricante AS 'Fabricante'
	, SUM (tbProduto.idProduto) AS 'Total de produtos' FROM tbFabricante
	INNER JOIN tbProduto ON tbProduto.idFabricante = tbFabricante.idFabricante
		GROUP BY tbFabricante.nomeFabricante

--D)Listar o total das vendas ao lado do nome do cliente;
SELECT nomeCliente AS 'Cliente'
	, SUM (tbVenda.idVenda) AS 'Total Vendas' FROM tbCliente
	INNER JOIN tbVenda ON tbVenda.idCliente = tbCliente.idCliente
		GROUP BY tbCliente.nomeCliente

--E)Preços dos produtos agrupados pelo nome do fornecedor;
SELECT valorProduto AS 'Preços dos produtos', nomeFornecedor AS 'Fornecedor' FROM tbProduto 
	INNER JOIN tbFornecedor ON tbProduto.idFornecedor = tbFornecedor.idFornecedor

--F)Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfabética;
SELECT nomeCliente AS 'Cliente'
	, SUM (tbVenda.idVenda) AS 'Total Vendas' FROM tbCliente
	INNER JOIN tbVenda ON tbVenda.idCliente = tbCliente.idCliente
		GROUP BY tbCliente.nomeCliente
		ORDER BY nomeCliente ASC

--G)Listar a soma dos preços dos produtos agrupados pelo nome do fabricante;
SELECT nomeFabricante AS 'Fabricante'
	, SUM (tbProduto.valorProduto) AS 'Total de produtos' FROM tbFabricante
	INNER JOIN tbProduto ON tbProduto.idFabricante = tbFabricante.idFabricante
		GROUP BY tbFabricante.nomeFabricante

--H)Listar a média dos preços dos produtos agrupados pelo nome do fornecedor;
SELECT nomeFornecedor AS 'Fornecedor'
	, AVG (tbProduto.valorProduto) AS 'Total de produtos' FROM tbFornecedor
	INNER JOIN tbProduto ON tbProduto.idFornecedor = tbFornecedor.idFornecedor
		GROUP BY tbFornecedor.nomeFornecedor

--I)Listar a soma das vendas agrupadas pelo nome do produto
SELECT descricaoProduto AS 'Produto'
	, SUM (tbVenda.idVenda) AS 'Total Vendas' FROM tbProduto
	INNER JOIN tbVenda ON tbProduto.idProduto= tbVenda.idCliente 
		INNER JOIN tbItensVenda ON tbVenda.idVenda= tbItensVenda.idVenda
		GROUP BY tbProduto.descricaoProduto

--J)Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
SELECT nomeCliente AS 'Cliente'
	, COUNT (tbVenda.idVenda) AS 'Total Vendas' FROM tbCliente
		INNER JOIN tbVenda ON tbCliente.idCliente= tbVenda.idCliente 
		WHERE MONTH (dataVenda) = 2 AND YEAR (dataVenda) = 2014
		GROUP BY tbCliente.nomeCliente 
			
SELECT * FROM tbCliente
SELECT * FROM tbVenda
		