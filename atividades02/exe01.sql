CREATE DATABASE db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    alcance VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    forcaAtaque INT,
    forcaDefesa INT,
    mana INT,
    inteligencia INT,
    carisma INT
);

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD classesId BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classesId) REFERENCES tb_classes (id);

INSERT INTO tb_classes (classe, tipo, alcance, descricao) VALUES ("Guerreiro", "Marcial, Versátil", "Curto", "Guerreiros são combatentes habilidosos que podem se especializar em lutas próximas com espadas e machados ou em combate à distância com arcos.");
INSERT INTO tb_classes (classe, tipo, alcance, descricao) VALUES ("Mago", "Conjurador, Ofensivo/Controle", "Médio", "Magos usam magias arcanas poderosas, sendo altamente eficazes para causar dano e controlar o campo de batalha à distância.");
INSERT INTO tb_classes (classe, tipo, alcance, descricao) VALUES ("Ladino", "Furtivo/Utilidade", "Curto", "Ladinos dependem de furtividade, precisão e ataques surpresa para maximizar o dano enquanto evitam confrontos diretos.");
INSERT INTO tb_classes (classe, tipo, alcance, descricao) VALUES ("Clérigo", "Conjurador, Curandeiro/Suporte", "Versátil", "Clérigos servem divindades e equilibram magia ofensiva com cura e buffs para aliados.");
INSERT INTO tb_classes (classe, tipo, alcance, descricao) VALUES ("Patrulheiro", "Híbrido Marcial/Conjurador, Explorador", "Longo", "Patrulheiros se destacam em rastrear inimigos, lutar em terrenos naturais e usar armas à distância como arcos ou armas corpo a corpo.");

INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Tharok, o Bravo", 2800, 2600, 40, 80, 100, 1);
INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Elaris, a Sábia", 1600, 1800, 200, 180, 120, 2);
INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Kael, o Furtivo", 2400, 1000, 60, 120, 140, 3);
INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Lyria, a Devota", 1000, 1200, 160, 140, 160, 4);
INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Sylwen, a Ágil", 2500, 2200, 100, 120, 100, 5);
INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Darian, o Justo", 1600, 2800, 100, 120, 180, 1);
INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Zalira, a Arcana", 1000, 1800, 180, 140, 20, 2);
INSERT INTO tb_personagens (nome, forcaAtaque, forcaDefesa, mana, inteligencia, carisma, classesId) VALUES ("Fynor, o Selvagem", 2400, 1200, 60, 100, 100, 3);

SELECT * FROM tb_personagens WHERE forcaAtaque > 2000;

SELECT * FROM tb_personagens WHERE forcaDefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, forcaAtaque, forcaDefesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id;

SELECT nome, forcaAtaque, forcaDefesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id WHERE classe = "Mago";
