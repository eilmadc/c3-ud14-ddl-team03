DROP DATABASE IF EXISTS ejercicio5;
CREATE DATABASE ejercicio5;
USE ejercicio5;

CREATE TABLE almacenes (
	codigo int PRIMARY KEY AUTO_INCREMENT,
    lugar char(100),
    capacidad int
);

CREATE TABLE cajas (
	num_referencia char(5) PRIMARY KEY,
	contenido char(100),
	valor int,
	almacen int,
	FOREIGN KEY (almacen) REFERENCES almacenes (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE
);