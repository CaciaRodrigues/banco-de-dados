CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(100) NOT NULL,
    disponivel BOOLEAN,
    preco DECIMAL(6,2),
    descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("Camiseta", "Vestuário", TRUE, 80.00, "Camiseta Preta Básica, 100% Algodão");
INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("Calça", "Vestuário", TRUE, 200.00, "Calça Denim Lavagem Clara, 100% Algodão");
INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("Conjunto Meias", "Vestuário Íntimo", TRUE, 65.00, "Pacote com 3 Pares de Meia, 100% Lã");
INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("Vela Floresta Turva", "Decorativo", TRUE, 200.00, "Vela Aromática. Aroma: Tempestade, Eucalipto, Terra Molhada. Ingredientes 100% Naturais");
INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("Alien Eau de Parfum Thierry Mugler", "Perfumaria", FALSE, 860.00, "Perfume Importado de Luxo");
INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("Samsung Galaxy Z Flip 5", "Eletrônicos", TRUE, 4499.00, "Telefone Celular Dobrável Samsung");
INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("Bioderma Atoderm Óleo de Banho", "Cuidados com a Pele", FALSE, 182.90, "Óleo de Banho para higiene hidratante diária 1l");
INSERT INTO tb_produtos(nome, categoria, disponivel, preco, descricao) VALUES ("L'Oréal Paris Elseve Óleo Extraordinário", "Cuidados com o Cabelo", TRUE, 50.00, "Óleo Finalizador,100ml");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 100.00, disponivel = FALSE WHERE id = 1;

SELECT * FROM tb_produtos;


