CREATE DATABASE tse;

USE tse;

CREATE TABLE eleitor (
    id_pessoa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    sobrenome VARCHAR(255),
    email VARCHAR(255),
    numero_titulo VARCHAR(255),
    cidade VARCHAR(255)
);

INSERT INTO eleitor (nome, sobrenome, email, numero_titulo, cidade) VALUES ('Mauricio', 'Magnani', 'msmagnanijr@gmail.com', '688532230132','Picada Cafe');

INSERT INTO eleitor (nome, sobrenome, email, numero_titulo, cidade) VALUES ('Karine', 'Takayama', 'karine@gmail.com', '452083800108', 'Sao Paulo');

INSERT INTO eleitor (nome, sobrenome, email, numero_titulo, cidade) VALUES ('Luan', 'Ribeiro', 'luan@gmail.com', '428175470132', 'Sao Francisco de Paula');

SELECT * FROM eleitor;