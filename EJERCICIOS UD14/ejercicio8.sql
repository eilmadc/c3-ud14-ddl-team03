DROP DATABASE IF EXISTS ejercicio8;
CREATE DATABASE ejercicio8;
USE ejercicio8;

CREATE TABLE piezas (
	codigo int PRIMARY KEY AUTO_INCREMENT,
    nombre char(100)
);

CREATE TABLE proveedores (
	id char(4) PRIMARY KEY,
    nombre char(100)
);

CREATE TABLE suministra (
	codigo_pieza int,
	id_proveedor char(4),
	precio int,
	PRIMARY KEY(codigo_pieza, id_proveedor),
	FOREIGN KEY (codigo_pieza) REFERENCES piezas (codigo),
	FOREIGN KEY (id_proveedor) REFERENCES proveedores (id)
	ON DELETE CASCADE ON UPDATE CASCADE
);