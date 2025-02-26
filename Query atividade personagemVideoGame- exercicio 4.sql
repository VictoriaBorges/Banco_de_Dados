CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estilo VARCHAR(50) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);
INSERT INTO tb_classes (estilo,especialidade) VALUES
('Ninjas', 'Combate corpo a corpo, resistência'),
('Mago', 'Magia de longo alcance'),
('Arqueiro', 'Ataques à distância, precisão'),
('atiradores','Ataques rápidos com armas'),
('fadas', 'Mistura de ataque e magia');


SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Sam', 20, 2100, 1900, 1),  -- Guerreiro
('Mulan', 18, 2700, 1300, 2),  -- Mago
('Lego', 22, 2300, 1600, 3),  -- Arqueiro
('Show', 25, 2900, 1100, 4),  -- Ladrão
('Clare', 15, 1900, 2100, 5),  -- Paladino
('Coba', 19, 2200, 1400, 1),  -- Guerreiro
('lilo', 21, 2800, 1700, 2),  -- Mago
('Estelar', 23, 2400, 1500, 3); 

SELECT *FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.id, tb_personagens.nome, tb_personagens.nivel, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.estilo AS classe, tb_classes.especialidade
FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.id,
       tb_personagens.nome, 
       tb_personagens.nivel,
       tb_personagens.poder_ataque, 
       tb_personagens.poder_defesa, 
       tb_classes.estilo AS classe, 
       tb_classes.especialidade 
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.estilo = 'Arqueiro';


