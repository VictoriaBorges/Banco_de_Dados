-- Criando o banco de dados
CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;


CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    marca VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo registros na tabela de categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Hidráulica', 'Materiais para encanamento e distribuição de água'),
('Elétrica', 'Fios, cabos, disjuntores e materiais elétricos'),
('Pintura', 'Tintas, pincéis e materiais para acabamento'),
('Ferramentas', 'Ferramentas manuais e elétricas para construção'),
('Cimento e Argamassa', 'Cimentos, argamassas e produtos para alvenaria');

SELECT * FROM tb_categorias;


INSERT INTO tb_produtos (nome, preco, quantidade_estoque, marca, categoria_id) VALUES
('Tubo PVC 40mm', 45.00, 100, 'Tigre', 1),
('Fio 2,5mm 100m', 180.00, 50, 'Corfio', 2),
('Tinta Acrílica 18L', 135.00, 30, 'Suvinil', 3),
('Martelo de Borracha', 65.00, 20, 'Tramontina', 4),
('Saco de Cimento 50kg', 32.00, 200, 'Votoran', 5),
('Chave de Fenda', 25.00, 75, 'Stanley', 4),
('Massa Corrida 25kg', 80.00, 40, 'Coral', 3),
('Lâmpada LED 9W', 18.00, 150, 'Philips', 2);


SELECT * FROM tb_produtos WHERE preco > 100.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';


SELECT tb_produtos.*, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;


SELECT tb_produtos.*, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Elétrica';

