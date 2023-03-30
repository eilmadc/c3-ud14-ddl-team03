DROP DATABASE IF EXISTS ejercicio11;
CREATE DATABASE ejercicio11;
USE ejercicio11;

CREATE TABLE facultades (
	codigo int PRIMARY KEY AUTO_INCREMENT,
    nombre char(100)
);

CREATE TABLE investigadores (
	dni char(8) PRIMARY KEY,
	nom_apels char(100),
	facultad int,
	FOREIGN KEY (facultad) REFERENCES facultades (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE equipos (
	num_serie char(3) PRIMARY KEY,
	nombre char(100),
	facultad int,
	FOREIGN KEY (facultad) REFERENCES facultades (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE reserva (
	dni char(8),
	num_serie char(3),
	comienzo date,
	fin date,
	PRIMARY KEY(dni, num_serie),
	FOREIGN KEY (dni) REFERENCES investigadores (dni),
	FOREIGN KEY (num_serie) REFERENCES equipos (num_serie)
	ON DELETE CASCADE ON UPDATE CASCADE
);