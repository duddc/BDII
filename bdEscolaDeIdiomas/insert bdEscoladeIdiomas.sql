USE bdEscolaIdiomas

INSERT tbAluno( nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES ('Paulo Santos','10/03/2000', '82.282.122-0', 'SP')
	, ('Maria Da Gloria','03/10/1999', '45.233.123-0', 'SP')
	, ('Pedro Nogueira da Silva','04/04/1998', '23.533.211-9', 'SP')
	, ('Gilson Barros Silva','09/09/1995', '34.221.111-x', 'PE')
	, ('Mariana Barbosa Santos','10/10/2001', '54.222.122-9', 'RJ')
	, ('Alessandro pereira','10/11/2003', '24.402.454-9', 'ES')
	, ('Aline Melo','08/10/2001', '82.282.122-0', 'RJ')

SELECT * FROM tbAluno

INSERT tbCurso( nomeCurso, cargahorariaCurso, valorCurso)
VALUES ('inglês', 2000, 356.00 )
	,('Alemão', 3000, 478.00 )
	,('Espanhol', 4000, 500.00 )


SELECT * FROM tbCurso

INSERT tbTurma(nomeTurma, idCurso, horarioTurma)
VALUES ('1|A', 1, '01/01/1900 12:00:00')
		,('1|C', 3, '01/01/1900 18:00:00')
		,('1|B', 1, '01/01/1900 18:00:00')
		,('1AA', 2, '01/01/1900 19:00:00')

SELECT * FROM tbTurma

INSERT tbMatricula(dataMatricula, idAluno, idTurma)
VALUES ('03/10/2015', 1, 1)
	, ('04/05/2014', 2, 1)
	, ('04/05/2014', 2, 4)
	, ('03/05/2012', 3, 2)
	, ('03/03/2016', 1, 3)
	, ('07/05/2015', 4, 2)
	, ('05/07/2015', 4, 3)

SELECT * FROM tbMatricula