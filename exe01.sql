CREATE DATABASE db_empresaRH;

USE db_empresaRH;

CREATE TABLE tb_colaboradores (
	id BIGINT PRIMARY KEY AUTO_INCREMENT ,
	ativo BOOLEAN,
	nome VARCHAR(100) NOT NULL,
	cargo VARCHAR(100) NOT NULL,
	salario DECIMAL(10,2)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(ativo,nome,cargo,salario) VALUES (TRUE, "Ana Aguiar", "Estagiária", 1200.00);
INSERT INTO tb_colaboradores(ativo,nome,cargo,salario) VALUES (TRUE, "Benício Bandeira", "Analista", 2700.00);
INSERT INTO tb_colaboradores(ativo,nome,cargo,salario) VALUES (TRUE, "Clara Carvalho", "Consultora", 7830.00);
INSERT INTO tb_colaboradores(ativo,nome,cargo,salario) VALUES (TRUE, "Dionísio D'Ávila", "Especialista", 7020.00);
INSERT INTO tb_colaboradores(ativo,nome,cargo,salario) VALUES (TRUE, "Ester Espinosa", "CHRO", 42250.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 1;

SELECT * FROM tb_colaboradores;
 
 