CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE tb_suplementos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL,
    quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_suplementos(nome, tipo, quantidade, datavalidade, preco) 
VALUES ("Creatina","Pré-treino", 30, "2024-12-15", 501.00),
("Whey Protein","Pós-treino", 10, "2024-12-15", 95.00),
("Insane","Pré-treino", 10, "2024-12-15", 55.00),
("Malto","Pré-treino", 22, "2024-12-15", 15.00),
("BCAA","Pós-treino", 25, "2024-12-15", 85.00),
("Haze","Pré-treino", 10, "2024-12-15", 105.00),
("Glutamina","Pós-treino", 30, "2024-12-15", 45.00),
("Caseína","Pós-treino", 23, "2024-12-15", 502.00);

SELECT * FROM tb_suplementos;

SELECT * FROM tb_suplementos WHERE preco < 500;

SELECT * FROM tb_suplementos WHERE preco > 500;

UPDATE tb_suplementos SET descricao = "Creapure 100%" WHERE Id = 1;
UPDATE tb_suplementos SET descricao = "proteina do leite" WHERE Id = 2;
UPDATE tb_suplementos SET descricao = "Muita energia" WHERE Id = 3;
UPDATE tb_suplementos SET descricao = "energia para seu treino" WHERE Id = 4;
UPDATE tb_suplementos SET descricao = "Reconstrução dos musculos" WHERE Id = 5;
UPDATE tb_suplementos SET descricao = "Força e mais força" WHERE Id = 6;
UPDATE tb_suplementos SET descricao = "Soneca de qualidade" WHERE Id = 7;
UPDATE tb_suplementos SET descricao = "Recuperação do músculo" WHERE Id = 8;



