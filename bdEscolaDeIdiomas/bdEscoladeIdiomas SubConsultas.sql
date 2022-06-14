USE bdEscolaIdiomas
--1 Criar uma consulta que retorne o nome e o preço dos cursos que custem abaixo do valor médio.
SELECT nomeCurso AS Curso, valorCurso AS Preço FROM tbCurso
WHERE valorCurso < (SELECT AVG (valorCurso) FROM tbCurso)

--2 Criar uma consulta que retorne o nome e o rg do aluno mais novo.
SELECT nomeAluno AS Aluno, rgAluno AS RG FROM tbAluno
WHERE dataNascimentoAluno IN (SELECT MAX (dataNascimentoAluno) FROM tbAluno)

-- 3 Criar uma consulta que retorne o nome do aluno mais velho
SELECT nomeAluno AS Aluno FROM tbAluno
WHERE dataNascimentoAluno IN (SELECT MIN (dataNascimentoAluno) FROM tbAluno)

--4 Criar uma consulta que retorne o nome e o valor do curso mais caro.
SELECT nomeCurso AS Curso, valorCurso as Preço FROM tbCurso
WHERE valorCurso IN (SELECT MAX (valorCurso) FROM tbCurso)

--5 Criar uma consulta que retorne o nome do aluno e o nome do curso, do aluno que fez a última matrícula.
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso ON tbCurso.idCurso = tbTurma.idTurma
	WHERE dataMatricula IN (SELECT MAX (dataMatricula) FROM tbMatricula)

--6 Criar uma consulta que retorne o nome do primeiro aluno a ser matriculado na escola de Idiomas.
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso ON tbCurso.idCurso = tbTurma.idTurma
	WHERE dataMatricula IN (SELECT MIN (dataMatricula) FROM tbMatricula)

--7 Criar uma consulta que retorne o nome,rg e data de nascimento de todos os alunos que estejam matriculados no curso de inglês.
SELECT nomeAluno AS Aluno, rgAluno AS RG, dataNascimentoAluno AS 'Data de Nascimento' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso ON tbCurso.idCurso = tbTurma.idTurma
	WHERE nomeCurso = 'Inglês'
