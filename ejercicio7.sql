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

INSERT INTO Despachos VALUES (1,3), (2,4), (3,3), (4,2), (5,6), (6,7), (7,8), (8,6), (9,8), (10,7);
