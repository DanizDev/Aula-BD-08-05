CREATE DATABASE Relacionamento;
USE Relacionamento;

CREATE TABLE Cursos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250)
);

CREATE TABLE Alunos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250),
    Curso INT,
    Salario DOUBLE,
    idade INT,
    FOREIGN KEY (Curso) REFERENCES Cursos(id)
);

INSERT INTO Cursos (nome) VALUES ('Matemática'), ('Física'), ('Química');

INSERT INTO Alunos (nome, Curso, Salario, idade) VALUES
('João Silva', 1, 1500.00, 20),
('Maria Oliveira', 2, 1800.00, 22),
('Pedro Santos', 1, 1600.00, 21),
('Ana Costa', 3, 1700.00, 19);

SELECT
	Alunos.id AS AlunoID,
    Alunos.nome AS AlunoNome,
    Cursos.nome AS CursoNome,
    Alunos.Salario,
    Alunos.idade
FROM
	Alunos
JOIN
	Cursos ON Alunos.Curso = Cursos.id;

