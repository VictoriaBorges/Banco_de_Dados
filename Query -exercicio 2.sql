-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE ecommerce_PetShop;
USE ecommerce_PetShop;
-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    marca VARCHAR(50) 
);

-- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO produtos (nome, categoria, preco, estoque, marca) VALUES
('Ração Premium para Cães', 'Alimentação', 150.00, 50, 'Pedigree'),
('Ração Premium para Gatos', 'Alimentação', 120.00, 40, 'Whiskas'),
('Casinha de Madeira', 'Acessórios', 700.00, 10, 'PetSHOW'),
('Arranhador para Gatos', 'Brinquedos', 450.00, 25, 'CatPlay'),
('Coleira Antipulgas', 'Saúde', 90.00, 60, 'Bayer'),
('Aquário Completo 50L', 'Acessórios', 650.00, 15, 'AquaLife'),
('Transportadora para Cães', 'Acessórios', 300.00, 30, 'PetTravel'),
('Tapete Higiênico', 'Higiene', 80.00, 100, 'HigiPompom');

SELECT * FROM produtos;

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.


SELECT * FROM produtos WHERE preco > 500;


-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.

SELECT * FROM produtos WHERE preco < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_produtos SET preco = 350.00 WHERE id=7;

SELECT * FROM tb_produtos WHERE Id=7;