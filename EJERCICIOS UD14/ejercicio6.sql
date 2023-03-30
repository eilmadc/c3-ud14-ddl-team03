/* Eliminación de la db si existe */
DROP DATABASE IF EXISTS ejercicio6;

/* Creacion de la db */
CREATE DATABASE ejercicio6;

/* Selección de la base de datos para comenzar a utilizar */
USE ejercicio6;

/*  Creación tabla --> Entidad Peliculas */
CREATE TABLE  peliculas(
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre CHAR(100),
    CalificacionEdad INT
);

/* Creación tabla --> Entidad Salas */
CREATE TABLE salas (
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre char(100),
Pelicula INT,
FOREIGN KEY (Pelicula) REFERENCES peliculas(Codigo) 
ON DELETE CASCADE
ON UPDATE CASCADE)
ENGINE=InnoDB;
;

/* Mostrar tablas */
SHOW TABLES;