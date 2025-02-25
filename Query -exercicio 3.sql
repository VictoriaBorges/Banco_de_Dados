-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
CREATE DATABASE db_escolaVB;
USE  db_escolaVB;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(255) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    email VARCHAR(255)
);

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO estudantes (nome, idade, serie, nota, email) VALUES
('Cazuza Souza', 14, '8º Ano', 8.5, 'cazuza@email.com'),
('Elis Regina ', 15, '9º Ano', 6.8, 'elis@email.com'),
('Carla Perez', 13, '7º Ano', 9.2, 'carla@email.com'),
('Diego Nogueira', 16, '1º Ano EM', 5.5, 'diego@email.com'),
('Rita Lee', 14, '8º Ano', 7.9, 'ritinha@email.com'),
('Bob Esponja', 15, '9º Ano', 4.7, 'fernando@email.com'),
('Gabriela Costa', 13, '7º Ano', 6.2, 'gabriela@email.com'),
('Emanuel Carlos', 17, '2º Ano EM', 8.0, 'henrique@email.com');

SELECT * FROM estudantes;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

SELECT * FROM estudantes WHERE nota > 7.0;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

SELECT * FROM estudantes WHERE nota < 7.0;

-- Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE estudantes SET idade = 16 WHERE id=6;

SELECT * FROM estudantes WHERE Id=6;