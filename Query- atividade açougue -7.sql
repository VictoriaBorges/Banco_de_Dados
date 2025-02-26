CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

-- Criando a tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

-- Inserindo categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Carnes Vermelhas', 'Carnes bovinas e suínas'),
('Aves', 'Carnes de frango e outras aves'),
('Embutidos', 'Linguiças, salsichas e derivados'),
('Peixes', 'Frutos do mar e peixes'),
('Frios', 'Queijos e presuntos');

SELECT * FROM tb_produtos;

-- Criando a tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    validade DATE NOT NULL,
    peso DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo produtos
INSERT INTO tb_produtos (nome_produto, preco, validade, peso, categoria_id) VALUES
('Picanha', 120.00, '2025-12-31', 1.50, 1),
('Filé de Frango', 35.00, '2025-11-15', 1.00, 2),
('Linguiça Toscana', 25.00, '2025-10-10', 0.80, 3),
('Salmão', 140.00, '2025-09-20', 2.00, 4),
('Presunto', 60.00, '2025-08-30', 0.50, 5),
('Costela Bovina', 90.00, '2025-12-01', 3.00, 1),
('Coxa de Frango', 45.00, '2025-07-25', 1.20, 2),
('Queijo Prato', 75.00, '2025-06-10', 0.60, 5);


SELECT * FROM tb_produtos WHERE preco > 50.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;


SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT tb_produtos.id, tb_produtos.nome_produto, tb_produtos.preco, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.id, tb_produtos.nome_produto, tb_produtos.preco, tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Aves';
