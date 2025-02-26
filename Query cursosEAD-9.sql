CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);


CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    duracao INT NOT NULL, -- duração em horas
    instrutor VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    CONSTRAINT fk_cursos_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);



INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos voltados para desenvolvimento de software e programação'),
('Design', 'Cursos voltados para design gráfico e UX/UI'),
('Marketing', 'Cursos sobre marketing digital e estratégias de vendas'),
('Negócios', 'Cursos voltados para gestão e empreendedorismo'),
('Idiomas', 'Cursos de aprendizado de novas línguas');

SELECT *FROM tb_categorias;

INSERT INTO tb_cursos (nome, preco, duracao, instrutor, categoria_id) VALUES
('Java Completo', 750.00, 60, 'Carlos Silva', 1),
('UX/UI para Iniciantes', 400.00, 40, 'Mariana Lopes', 2),
('Facebook Ads Avançado', 1200.00, 30, 'Renato Souza', 3),
('Gestão de Projetos', 950.00, 50, 'Fernanda Almeida', 4),
('Inglês para Viagens', 500.00, 25, 'John Carter', 5),
('Python para Data Science', 1300.00, 80, 'Eduardo Santos', 1),
('Adobe Photoshop Essencial', 600.00, 35, 'Paula Mendes', 2),
('Marketing de Conteúdo', 650.00, 45, 'Ana Beatriz', 3);

SELECT *FROM tb_cursos;
SELECT * FROM tb_cursos WHERE preco > 500.00;


SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;


SELECT * FROM tb_cursos WHERE nome LIKE '%J%';


SELECT tb_cursos.*, tb_categorias.nome AS categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;


SELECT tb_cursos.*, tb_categorias.nome AS categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Programação';
