CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    formacao VARCHAR(100) NOT NULL,
    turma INT,
    modalidade VARCHAR(100),
    media DECIMAL(3,1)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Flora Figueiredo", "Ciência da Computação", 61, "Graduação", 10.0);
INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Galileu Guimarães", "Engenharia Mecatrônica", 72, "Graduação", 9.3);
INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Hope Herrmann", "Engenharia de Software", 83, "Graduação", 5.0);
INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Isis Ingham", "Banco de Dados", 94, "Curso Técnico", 8.6);
INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Joaquim Jacobs", "Agrocomputação", 105, "Curso Técnico", 10.0);
INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Klaus King", "Engenharia de Software", 83, "Graduação", 4.2);
INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Luna Lancastre", "Banco de Dados", 94, "Curso Técnico", 7.5);
INSERT INTO tb_estudantes (nome, formacao, turma, modalidade, media) VALUES ("Margot Marion", "Ciência da Computação", 61, "Graduação", 6.3);

SELECT * FROM tb_estudantes WHERE media > 7.0;

SELECT * FROM tb_estudantes WHERE media < 7.0;

UPDATE tb_estudantes SET media = 7.0 WHERE Id = 8;

SELECT * FROM tb_estudantes;


