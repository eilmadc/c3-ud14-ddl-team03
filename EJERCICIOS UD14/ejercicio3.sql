/* Eliminación de la db si existe */
DROP DATABASE IF EXISTS ejercicio3;

/* Creacion de la db */
CREATE DATABASE ejercicio3;

/* Selección de la base de datos para comenzar a utilizar */
USE ejercicio3;

/*  Creación tabla --> Entidad Fabricantes */
CREATE TABLE  fabricantes(
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre CHAR(100)
);

/* Creación tabla --> Entidad Artículos */
CREATE TABLE articulos (
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre char(100),
Precio INT,
Fabricante INT  NOT NULL,
FOREIGN KEY (Fabricante) REFERENCES fabricantes(Codigo) 
ON DELETE CASCADE
ON UPDATE CASCADE)
ENGINE=InnoDB;
;
/* Mostrar tablas */
SHOW TABLES;
