DROP DATABASE ejercicio10;
CREATE DATABASE ejercicio10;
USE ejercicio10;
CREATE TABLE jugador (
nombre_jugador char(50) PRIMARY KEY
);
CREATE TABLE equipo (
nombre_equipo char(50) PRIMARY KEY,
nombre_jugador char(50),
FOREIGN KEY (nombre_jugador) REFERENCES jugador (nombre_jugador)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE partido (
cod_partido char(20) PRIMARY KEY,
nombre_equipo1 char(50) NOT NULL,
FOREIGN KEY (nombre_equipo1) REFERENCES equipo (nombre_equipo),
nombre_equipo2 char(50) NOT NULL,
FOREIGN KEY (nombre_equipo2) REFERENCES equipo (nombre_equipo),
campo char(50) NOT NULL
);
CREATE TABLE temporada (
temporada_anno char(20) PRIMARY KEY,
cod_partido char(20),
FOREIGN KEY (cod_partido) REFERENCES partido (cod_partido)
);
CREATE TABLE liga (
nombre_liga char(50) PRIMARY KEY,
temporada_anno char(20),
FOREIGN KEY (temporada_anno) REFERENCES temporada (temporada_anno)
);
SELECT *FROM jugador;