-- Criação do banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100) NOT NULL
);

-- Inserção de 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Medicamentos', 'Medicamentos gerais para várias doenças'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Higiene', 'Produtos para higiene pessoal e cuidados diários'),
('Suplementos', 'Produtos para suplementação e vitaminas'),
('Perfumaria', 'Fragrâncias e perfumes variados');

-- Criação da tabela tb_produtos
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    quantidade_em_estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserção de 8 registros na tabela tb_produtos
INSERT INTO tb_produtos (nome_produto, valor, quantidade_em_estoque, id_categoria) VALUES
('Paracetamol', 25.00, 100, 1),
('Shampoo Herbal', 40.00, 50, 2),
('Sabonete Líquido', 10.00, 200, 3),
('Vitamin C', 55.00, 75, 4),
('Perfume Dolce', 120.00, 30, 5),
('Aspirina', 30.00, 80, 1),
('Creme Hidratante', 45.00, 60, 2),
('Whey Protein', 150.00, 40, 4);

SELECT * FROM tb_produtos;

SELECT 
    tb_produtos.id_produto, 
    tb_produtos.nome_produto, 
    tb_produtos.valor, 
    tb_produtos.quantidade_em_estoque, 
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_produtos.valor > 50.00;

SELECT 
    tb_produtos.id_produto, 
    tb_produtos.nome_produto, 
    tb_produtos.valor, 
    tb_produtos.quantidade_em_estoque, 
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_produtos.valor BETWEEN 5.00 AND 60.00;

SELECT 
    tb_produtos.id_produto, 
    tb_produtos.nome_produto, 
    tb_produtos.valor, 
    tb_produtos.quantidade_em_estoque, 
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_produtos.nome_produto LIKE '%C%';

SELECT 
    tb_produtos.id_produto, 
    tb_produtos.nome_produto, 
    tb_produtos.valor, 
    tb_produtos.quantidade_em_estoque, 
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT 
    tb_produtos.id_produto, 
    tb_produtos.nome_produto, 
    tb_produtos.valor, 
    tb_produtos.quantidade_em_estoque, 
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Cosméticos';



