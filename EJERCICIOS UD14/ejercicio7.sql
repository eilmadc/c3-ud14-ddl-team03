DROP DATABASE IF EXISTS ejercicio7;
CREATE DATABASE ejercicio7;
USE ejercicio7;

CREATE TABLE Directores (
DNI varchar(8) PRIMARY KEY,
nomApells varchar(255),
DNIJefe varchar(8),
FOREIGN KEY (DNIJefe) REFERENCES Directores (DNI)
);

CREATE TABLE Despachos (
numero int PRIMARY KEY,
capacidad int,
DNI varchar(8),
FOREIGN KEY (DNI) REFERENCES Directores (DNI)
);

INSERT INTO Directores VALUES ("11122233","JuanJose",null), ("12345678","SandraCasssandra","11122233");
INSERT INTO Despachos VALUES (1,3,"11122233"), (2,4,"11122233"), (3,3,"11122233"), (4,2,"11122233"), (5,6,"11122233"), 
(6,7,"12345678"), (7,8,"12345678"), (8,6,"12345678"), (9,8,"12345678"), (10,7,"12345678");
