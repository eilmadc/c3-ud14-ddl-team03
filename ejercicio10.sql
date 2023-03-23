DROP DATABASE ejercicio10;
CREATE DATABASE ejercicio10;
USE ejercicio10;
CREATE TABLE liga (
nombre_liga char(50) PRIMARY KEY
);
CREATE TABLE temporada (
temporada_anno int(4) PRIMARY KEY,
nombre_liga char(20),
FOREIGN KEY (nombre_liga) REFERENCES liga (nombre_liga)
);
CREATE TABLE equipo (
nombre_equipo char(50) PRIMARY KEY
);
CREATE TABLE jugador (
nombre_jugador char(50) PRIMARY KEY,
nombre_equipo char(50),
FOREIGN KEY (nombre_equipo) REFERENCES equipo (nombre_equipo)
);
CREATE TABLE partido (
cod_partido char(20) PRIMARY KEY,
nombre_equipo1 char(50) NOT NULL,
FOREIGN KEY (nombre_equipo1) REFERENCES equipo (nombre_equipo),
nombre_equipo2 char(50) NOT NULL,
FOREIGN KEY (nombre_equipo2) REFERENCES equipo (nombre_equipo),
campo char(50) NOT NULL,
temporada_anno int(4),
FOREIGN KEY (temporada_anno) REFERENCES temporada (temporada_anno)
);

