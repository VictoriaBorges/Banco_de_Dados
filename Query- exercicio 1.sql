-- -- 1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
CREATE DATABASE rh_empresa;
USE rh_empresa;

-- 2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL
);

-- 3. Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES
('Emanuelly Souza', 'Analista de RH', 'Recursos Humanos', 2500.00, '2024-03-15'),
('Marcelo Borges', 'Desenvolvedor', 'TI', 1800.00, '2021-07-10'),
('Victoria Borges', 'Gerente de Projetos', 'TI', 3200.00, '2024-11-20'),
('Antonio Santos', 'Assistente Financeiro', 'Financeiro', 1900.00, '2022-05-25'),
('Cristiano Costa', 'Coordenador de Marketing', 'Marketing', 2800.00, '2021-09-30');

SELECT* FROM colaboradores;

-- 4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.


SELECT * FROM colaboradores WHERE salario > 2000;

-- 5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.

SELECT * FROM colaboradores WHERE salario < 2000;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE colaboradores SET salario = 6000.00 WHERE id = 3;
SELECT * FROM colaboradores WHERE Id=3;

