CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100) NOT NULL
);

INSERT INTO tb_categorias (nome_categoria,descricao_categoria) VALUES
('Salgada','pizza salgadas com variedade de ingredientes'),
('Doce', 'pizza doce com frutas e confeitos especiais'),
('pizza broto salgada', 'também temos pizzas salgadas em formato de broto'),
('pizza broto doce','temos pizzas doce em formato de broto'),
('pizza Gourmet', 'Pizza para momentos especiais');


SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, id_categoria) VALUES
('Mussarela', 39.90, 'Média', 1),
('Calabresa', 42.00, 'Grande', 1),
('Chocolate', 49.90, 'Média', 2),
('Banana com Canela', 52.00, 'Grande', 2),
('Pizza trem', 90.00, 'SuperGrande', 5),
('Margherita', 55.00, 'Média', 4),
('Frango com Catupiry', 60.00, 'Grande', 1),
('Brigadeiro', 55.00, 'Média', 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';
SELECT 
    tb_pizzas.id_pizza, 
    tb_pizzas.nome_pizza, 
    tb_pizzas.valor, 
    tb_pizzas.tamanho, 
    tb_categorias.nome_categoria AS categoria  FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT 
    tb_pizzas.id_pizza, 
    tb_pizzas.nome_pizza, 
    tb_pizzas.valor, 
    tb_pizzas.tamanho, 
    tb_categorias.nome_categoria AS categoria  FROM tb_pizzas
INNER JOIN tb_categorias ON 
    tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Doce';  

