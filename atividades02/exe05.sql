CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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

INSERT INTO tb_categorias (categoria, descricao) VALUES ("Hidráulica", "Produtos para instalações de água, esgoto e sistemas hidráulicos.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Elétrica", "Materiais para instalações e reparos elétricos.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Pintura", "Tintas, acessórios e produtos para acabamentos.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Ferramentas", " Equipamentos manuais, elétricos e acessórios para construção e reparos.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Revestimentos", "Pisos, azulejos e materiais para acabamento de superfícies.");

INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Torneira de parede", 50.00, TRUE, 35, 1);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Tomada 2P+T (10A)", 12.00, TRUE, 50, 2);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Tinta acrílica 3,6L (branca)", 100.00, FALSE, 0, 3);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Rolo de pintura", 25.00, TRUE, 60, 3);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Furadeira de impacto 500W", 250.00, FALSE, 0, 4);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Martelo de unha 500g", 35.00, TRUE, 10, 4);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Registro de Pressão", 40.00, TRUE, 25, 1);
INSERT INTO tb_produtos (nome, preco, emEstoque, quantidade, categoriasId) VALUES ("Disjuntor monopolar 16A", 25.00, TRUE, 15, 2);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, emEstoque, quantidade, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

SELECT nome, preco, emEstoque, quantidade, tb_categorias.categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id WHERE categoria = "Hidráulica";