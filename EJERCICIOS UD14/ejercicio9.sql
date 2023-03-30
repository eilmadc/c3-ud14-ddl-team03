/* Eliminación de la db si existe */
DROP DATABASE IF EXISTS ejercicio9;

/* Creacion de la db */
CREATE DATABASE ejercicio9;

/* Selección de la base de datos para comenzar a utilizar */
USE ejercicio9;

/*  Creación tabla --> Entidad cientificos */
CREATE TABLE  cientificos(
	DNI char(8) PRIMARY KEY,
	NomApels CHAR(255)
);

/* Creación tabla --> Entidad proyecto */
CREATE TABLE proyecto (
id char(4) PRIMARY KEY,
Nombre char(255),
Horas INT
);

/* Creación tabla --> Entidad asignado_a */
CREATE TABLE asignado_a (
Cientifico char(8) PRIMARY KEY,
Proyecto char(4),
FOREIGN KEY (Cientifico) REFERENCES cientificos(dni) 
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (Proyecto) REFERENCES proyecto(id) 
ON DELETE CASCADE
ON UPDATE CASCADE)
ENGINE=InnoDB;
;

/* Mostrar tablas */
SHOW TABLES;