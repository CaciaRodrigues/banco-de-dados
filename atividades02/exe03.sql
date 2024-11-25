CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    validade DATE NOT NULL,
    indicacaoUso VARCHAR(255)
);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD categoriasId BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriasId) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Medicamentos", "Produtos destinados ao tratamento de doenças, alívio de sintomas ou prevenção de condições de saúde.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Produtos de Higiene Pessoal", "Itens usados no cuidado diário do corpo. Visam promover o bem-estar e a limpeza do corpo.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Cosméticos", "Produtos voltados para a estética e cuidados com a pele, cabelo e rosto. Para aparência e saúde da pele e cabelos.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Suplementos Alimentares", "Complementam a alimentação. Para melhorar a saúde, prevenir deficiências nutricionais ou auxiliar no desempenho físico e mental.");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Produtos para Cuidados com a Saúde", "Para monitorar, prevenir ou tratar questões de saúde em casa.");

INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Dipirona", 10.00, "2029-12-31", "Analgésico e antipirético. Indicado para alívio de dores e febre.", 1);
INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Omeprazol", 25.00, "2027-12-31", "Inibidor da bomba de prótons. Indicado para o tratamento de refluxo gastroesofágico e úlceras no estômago.", 1);
INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Desodorante Rexona Clinical", 18.00, "2026-12-31", "Desodorante antitranspirante para proteção prolongada contra o suor excessivo.", 2);
INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Sabonete Líquido Dove", 12.00, "2026-12-31", " Sabonete hidratante para a pele, indicado para uso diário.", 2);
INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Protetor Solar La Roche-Posay Anthelios", 85.00, "2027-12-31", "Protetor solar com alta proteção contra raios UVA e UVB. Indicado para pele sensível.", 3);
INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Whey Protein Growth Supplements", 150.00, "2030-12-31", "Suplemento proteico indicado para aumento de massa muscular e recuperação pós-treino.", 4);
INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Termômetro Digital G-Tech", 35.00, "2050-01-01", "Termômetro para medição de temperatura corporal, ideal para uso doméstico.", 5);
INSERT INTO tb_produtos (nome, preco, validade, indicacaoUso, categoriasId) VALUES ("Medidor de Pressão Digital Omron", 180.00, "2050-01-01", "Aparelho para medir a pressão arterial de forma rápida e precisa em casa.", 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, preco, validade, indicacaoUso, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

SELECT nome, preco, validade, indicacaoUso, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id WHERE tipo = "Medicamentos";