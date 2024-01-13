CREATE TABLE Aluno (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Matricula VARCHAR(20) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);

INSERT INTO
    ALUNO (ID, MATRICULA, NOME, EMAIL, ENDERECO, TELEFONE)
VALUES
    (   
        1,
        1234,
        'Joao Carlos',
        'jcarlos@gmail.com',
        'Rua 13 de Maio',
        '(11)78254489'
    );

INSERT INTO
    ALUNO (ID, MATRICULA, NOME, EMAIL, ENDERECO, TELEFONE)
VALUES
    (
        2,
        2345,
        'Jose Vitor',
        'jvitor@gmail.com',
        'Rua da Saudade',
        '(11)78256589'
    );

INSERT INTO
    ALUNO (ID, MATRICULA, NOME, EMAIL, ENDERECO, TELEFONE)
VALUES
    (
        3,
        3456,
        'Paulo Andre',
        'pandr@gmail.com',
        'Rua da sol',
        '(11)78254495'
    );

CREATE TABLE Emprestimo (
    Codigo INT PRIMARY KEY,
    Data_Hora DATETIME,
    Matric_Aluno VARCHAR(20),
    Data_Devolucao DATE
);

INSERT INTO
    Emprestimo (Codigo, Data_Hora, Matric_Aluno, Data_Devolucao)
VALUES
    (1, '2022-03-12 15:25:00', '1234', '2022-03-15'),
    (2, '2022-03-15 14:32:00', '3456', '2022-03-18'),
    (3, '2022-03-20 03:01:00', '2345', '2022-03-23');

CREATE TABLE Livro_Emprestimo (Cod_Livro INT, Cod_Emprestimo INT);

INSERT INTO
    Livro_Emprestimo (Cod_Livro, Cod_Emprestimo)
VALUES
    (3, 1),
    (1, 3),
    (2, 2);

CREATE TABLE Livro (
    Cod_Livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Cod_Sessao INT
);

INSERT INTO
    Livro (Cod_Livro, Titulo, Autor, Cod_Sessao)
VALUES
    (
        1,
        'Modelo Conceitual e Diagramas ER',
        'Pressman, Roger S',
        3
    ),
    (
        2,
        'Modelo Relacional e Algebra Relacional',
        'Heuser, Carlos Alberto',
        1
    ),
    (3, 'Linguagem SQL', 'Beighley, Lynn', 2);

CREATE TABLE Sessao (
    Codigo INT PRIMARY KEY,
    Descricao VARCHAR(255),
    Localizacao VARCHAR(255)
);

INSERT INTO
    Sessao (Codigo, Descricao, Localizacao)
VALUES
    (1, 'Sessao1', 'Prateleira1'),
    (2, 'Sessao2', 'Prateleira2'),
    (3, 'Sessao3', 'Prateleira3');