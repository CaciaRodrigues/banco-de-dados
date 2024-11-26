CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    emEstoque BOOLEAN NOT NULL,
    quantidade INT
);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD categoriasId BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriasId) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (categoria, descricao) VALUES ("Frutas", " Produtos comestíveis de origem vegetal, geralmente doces ou ácidos, ricos em vitaminas e consumidos crus ou processados.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Legumes", "Partes comestíveis de plantas, como raízes, tubérculos ou frutos, amplamente utilizadas em preparações culinárias.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Verduras", "Folhas verdes ou coloridas comestíveis, ricas em nutrientes, consumidas cruas ou cozidas.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Temperos e Ervas", "Plantas aromáticas usadas para realçar o sabor e aroma de pratos culinários.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Grãos e Tubérculos", "Sementes e raízes ricas em carboidratos, essenciais como base alimentar em diversas culturas.");

INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Melancia Grande", 50.00, TRUE, 50, 1);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Uva", 15.00, TRUE, 200, 1);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Beringela", 8.00, TRUE, 160, 2);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Cenoura", 6.50, TRUE, 200, 2);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Rúcula", 10.00, TRUE, 120, 3);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Coentro", 5.00, TRUE, 250, 4);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Milho Verde", 10.00, TRUE, 100, 5);

SELECT * FROM tb_produtos WHERE preco > 30.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 10.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, emEstoque, quantidade, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

SELECT nome, preco, emEstoque, quantidade, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id WHERE categoria = "Frutas";

-- Valores de teste alterados para melhor uso na situação