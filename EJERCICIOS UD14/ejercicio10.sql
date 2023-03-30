DROP DATABASE IF EXISTS ejercicio10;
CREATE DATABASE ejercicio10;
USE ejercicio10;

CREATE TABLE Cajeros (
codigo int PRIMARY KEY,
nomApells varchar(255)
);
CREATE TABLE Productos (
codigo int PRIMARY KEY,
nombre nvarchar(100),
precio int
);
CREATE TABLE Maquinas_Registradoras (
codigo int PRIMARY KEY,
piso int
);
CREATE TABLE Ventas (
cajero int,
FOREIGN KEY (cajero) REFERENCES Cajeros (codigo),
producto int,
FOREIGN KEY (producto) REFERENCES Productos (codigo),
maquina int,
FOREIGN KEY (maquina) REFERENCES Maquinas_Registradoras (codigo)
);

INSERT INTO Cajeros VALUES (1,'Juan'), (2,'Sandra'), (3,'Jose'), (4,'Sara'), (5,'Carlos'), (6,'Ewelina'), 
(7,'Isaac'), (8,'Neus'), (9,'Sergi'), (10,'Marc');
INSERT INTO Productos VALUES (1, 'Tomate',3), (2, 'Patata',4), (3, 'Manzana',3), (4, 'Platano',2), (5, 'Pera',6), 
(6, 'Libro',7), (7, 'Boligrafo',8), (8, 'Radio',6), (9, 'Television',8), (10, 'Sarten',7);
INSERT INTO Maquinas_Registradoras VALUES (1,1), (2,3), (3,3), (4,2), (5,3), (6,1), (7,2), (8,1), (9,2), (10,3);
INSERT INTO Ventas VALUES (1,2,3), (2,4,7), (3,3,9), (4,2,10), (5,4,6), (6,3,7), (7,1,8), (1,8,6), (9,9,8), (10,10,7);
