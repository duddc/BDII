CREATE DATABASE bdEstoque 

USE bdEstoque

--DROP DATABASE bdEstoque 

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY(1,1)
		, nomeCliente VARCHAR (45) NOT NULL
		, cpfCliente CHAR (14) NOT NULL
		, emailCliente VARCHAR (40)NOT NULL
		, sexoCliente CHAR (10) NOT NULL 
		, dataNascimentoCliente DATETIME NOT NULL
)
CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY(1,1)
	, nomeFabricante VARCHAR (45) NOT NULL
)
CREATE TABLE tbFornecedor(
	idFornecedor INT PRIMARY KEY IDENTITY(1,1)
	, nomeFornecedor VARCHAR (45) NOT NULL
	, contatoFornecedor CHAR (30) NOT NULL
)
CREATE TABLE tbVenda(
		idVenda INT PRIMARY KEY IDENTITY(1,1)
		, dataVenda SMALLDATETIME NOT NULL
		, valorTotalVenda SMALLMONEY NOT NULL 
		, idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
)
CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY(1,1)
	, descricaoProduto CHAR (50) NOT NULL
	, valorProduto SMALLMONEY NOT NULL 
	, quantidadeProduto INT NOT NULL
	, idFabricante INT FOREIGN KEY REFERENCES tbFabricante (idFabricante)
	, idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
)
CREATE TABLE tbItensVenda(
	 idItensVenda INT PRIMARY KEY IDENTITY(1,1)
	 , quantidadeItensVenda VARCHAR (1000) NOT NULL
	 , subTotalItensVenda SMALLMONEY NOT NULL
	 , idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda)
	 , idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
)




















