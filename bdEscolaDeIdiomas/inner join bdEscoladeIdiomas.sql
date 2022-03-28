USE bdEscolaIdiomas

--1)Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;
SELECT nomeAluno AS 'Aluno', nomeCurso AS 'Curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso ON tbCurso.idCurso = tbTurma.idTurma

--2)Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT COUNT (nomeAluno) AS 'Quantidade de Alunos por curso', nomeCurso From TbMatricula
    INNER JOIN  tbAluno ON tbMatricula.idAluno = tbAluno.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
			INNER JOIN tbCurso ON tbTurma.idCurso =tbCurso.idCurso
    GROUP BY nomeCurso

--3)Apresentar a quantidade de alunos matriculados por nome da turma;
SELECT COUNT(idAluno) AS 'Quantidade de Alunos em cada turma', nomeTurma FROM tbMatricula
	INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
	GROUP BY nomeTurma

--4)Apresentar a quantidade de alunos que fizeram matricula em maio de 2016;
	SELECT COUNT(idAluno) AS 'Quantidade de Alunos que fizeram a matricula em Maio de 2016' FROM tbMatricula
	WHERE MONTH (dataMatricula) = 5 AND YEAR(dataMatricula) = 2016

--5)Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas em que estão matriculados;
SELECT nomeAluno AS 'Aluno', nomeTurma AS 'Turma' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno
		INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
	ORDER BY nomeAluno ASC

--6)Apresentar o nome dos cursos e os horários em que eles são oferecidos;
SELECT nomeCurso AS 'Curso', horarioTurma AS 'Horário' FROM tbTurma
	INNER JOIN tbCurso ON tbTurma.idCurso = tbCurso.idCurso

--7)Apresentar a quantidade de alunos nascidos por estado;
SELECT COUNT(idAluno) AS 'Quantidade de Alunos', naturalidadeAluno FROM tbAluno
	GROUP BY naturalidadeAluno

--8)Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa;
SELECT nomeAluno AS 'Aluno', FORMAT (dataMatricula, 'dd/MM/yyyy') AS 'Data da Matricula' FROM  tbAluno 
	INNER JOIN tbMatricula ON tbAluno.idAluno = tbMatricula.idAluno

--9)Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês; 
SELECT nomeAluno AS 'Aluno' FROM tbMatricula
INNER JOIN tbAluno ON tbMatricula.idAluno = tbAluno.idAluno
INNER JOIN tbTurma ON tbMatricula.idTurma = tbTurma.idTurma
WHERE nomeAluno LIKE 'A%' AND idCurso = 1
	
--10)Apresentar a quantidade de matriculas feitas no ano de 2016
SELECT COUNT(idMatricula) AS 'Quantidade de matrículas' FROM tbMatricula
	WHERE YEAR(dataMatricula) = 2016

