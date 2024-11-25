CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255)
);

SELECT * FROM tb_pizzas;

ALTER TABLE tb_pizzas ADD categoriasId BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriasId) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Tradicionais", "Pizzas clássicas italianas que valorizam ingredientes simples e autênticos, como molho de tomate, queijo e ervas frescas.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Vegetarianas", "Leves e nutritivas, destacam o frescor de vegetais, queijos e temperos naturais em combinações equilibradas. Não contém carnes.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Especiais", "Pizzas sofisticadas que misturam ingredientes refinados e combinações únicas para um sabor exclusivo.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Regionais", "Incorpora ingredientes e sabores típicos de uma determinada cultura ou região, refletindo sua identidade culinária local.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Doces", "Opções de sobremesa deliciosas com chocolate, frutas e outros ingredientes açucarados que encantam o paladar.");

INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Margherita", 49.90, "Grande", "Molho de tomate, mozzarella, manjericão fresco e azeite de oliva.", 1);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Napolitana", 57.90, "Grande", "Molho de tomate, mozzarella, anchovas, alcaparras, alho e azeite de oliva.", 1);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Caprese", 59.90, "Média","Tomate fresco, mozzarella de búfala, manjericão, azeite de oliva e redução de balsâmico.", 2);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Vegetaria Supreme", 59.90, "Pequena", " Pimentão, cebola roxa, cogumelos, azeitonas pretas e queijo mozzarella.",2);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Parma com Rúcula", 120.90, "Grande", "Presunto de parma, mozzarella de búfala, rúcula fresca e lascas de parmesão.", 3);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Trufa Negra", 99.90, "Média", "Base de creme de queijo, mozzarella, cogumelos salteados, azeite de trufa negra e lascas de parmesão.", 3);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Nordestina", 69.90, "Grande", "Carne de sol, queijo coalho, cebola caramelizada e manteiga de garrafa.", 4);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Baiana", 39.90, "Pequena", "Calabresa picante, pimenta, cebola, queijo mozzarella e azeitonas.", 4);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Brigadeiro", 39.90, "Pequena", "Massa de pizza coberta com brigadeiro, granulado e pedaços de chocolate.", 5);
INSERT INTO tb_pizzas (sabor, preco, tamanho, ingredientes, categoriasId) VALUES ("Banana com Canela", 89.90, "Grande", "Banana fatiada, açúcar mascavo, canela e uma camada fina de creme de leite condensado.", 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT sabor, preco, tamanho, ingredientes, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id;

SELECT sabor, preco, tamanho, ingredientes, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id WHERE tipo = "Especiais";