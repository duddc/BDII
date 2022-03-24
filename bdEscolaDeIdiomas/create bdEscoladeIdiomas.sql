CREATE DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas
--DROP DATABASE bdEscolaIdiomas

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY(1,1)
	, nomeAluno VARCHAR (50) NOT NULL 
	, dataNascimentoAluno SMALLDATETIME NOT NULL
	, rgAluno VARCHAR (30) NOT NULL 
	, naturalidadeAluno VARCHAR (30) NOT NULL 
)
CREATE TABLE tbCurso(
	idCurso  INT PRIMARY KEY IDENTITY(1,1)
	, nomeCurso VARCHAR (50) NOT NULL
	, cargahorariaCurso INT NOT NULL
	, valorCurso SMALLMONEY NOT NULL
)
CREATE TABLE tbTurma(
	idTurma  INT PRIMARY KEY IDENTITY(1,1)
	, nomeTurma VARCHAR (50) NOT NULL
	, horarioTurma SMALLDATETIME NOT NULL
	, idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
)
CREATE TABLE tbMatricula(
	idMatricula  INT PRIMARY KEY IDENTITY(1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	, idTurma INT FOREIGN KEY REFERENCES tbTurma (idturma)
)