CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    inscricoesAbertas BOOLEAN,
    vagas INT,
    duracao VARCHAR(255)
);

SELECT * FROM tb_cursos;

ALTER TABLE tb_cursos ADD categoriasId BIGINT;

ALTER TABLE tb_cursos ADD CONSTRAINT fk_cursos_categorias
FOREIGN KEY (categoriasId) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (categoria, descricao) VALUES ("Programação", "Ensino de linguagens e desenvolvimento de software.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Design e UX/UI", "Criação de interfaces e experiências digitais.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Dados", "Análise, ciência e engenharia de dados.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Infraestrutura e Redes", "Administração de servidores e conectividade.");
INSERT INTO tb_categorias (categoria, descricao) VALUES ("Cibersegurança", " Proteção de sistemas e informações digitais.");

INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Desenvolvimento Web Full Stack", 2000.00, FALSE, 35, "6 meses", 1);
INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Introdução à Programação em Python", 600.00, TRUE, 30, "2 meses", 1);
INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Design de Interfaces para Aplicativos", 1500.00, TRUE, 36, "4 meses", 2);
INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Análise de Dados com Power BI", 800.00, FALSE, 20, "2 meses", 3);
INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Ciência de Dados com Python e Machine Learning", 2500.00, FALSE, 35, "6 meses", 3);
INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Administração de Redes e Servidores Linux", 1200.00, TRUE, 25, "4 meses", 4);
INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Curso de Figma para Designers", 700.00, TRUE, 20, "1 mês", 2);
INSERT INTO tb_cursos (nome, valor, inscricoesAbertas, vagas, duracao, categoriasId) VALUES ("Pentest e Testes de Vulnerabilidade", 2500.00, TRUE, 25, "6 meses", 5);


SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

SELECT nome, valor, inscricoesAbertas, vagas, duracao, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriasid = tb_categorias.id;

SELECT nome, valor, inscricoesAbertas, vagas, duracao, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriasid = tb_categorias.id WHERE categoria = "Programação";