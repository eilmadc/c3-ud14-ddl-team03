DROP DATABASE IF EXISTS ejercicio3;
CREATE DATABASE ejercicio3;

USE ejercicio3;

/* Entidad Comunidad Autonoma */
CREATE TABLE  comunidad_autonoma(
nombre_comunidad char(50) PRIMARY KEY,
poblacion int,
superficie int
);

/* Entidad Provincia */
CREATE TABLE provincia (
cod_provincia int PRIMARY KEY,
nombre_provincia char(50),
poblacion int,
superficie int,
nombre_comunidad char(50),
FOREIGN KEY (nombre_comunidad) REFERENCES comunidad_autonoma (nombre_comunidad)
ON DELETE CASCADE ON UPDATE CASCADE
);

/* Entidad Localidad */
CREATE TABLE  localidad(
nombre_localidad char(50) PRIMARY KEY,
poblacion int,
cod_provincia int NOT NULL,
FOREIGN KEY (cod_provincia) REFERENCES provincia(cod_provincia)
ON DELETE CASCADE ON UPDATE CASCADE
);

/* Entidad Capital de Comunidad Autonoma */
CREATE TABLE capital_ca (
nombre_localidad char(50),
KEY (nombre_localidad),
nombre_comunidad char(50),
KEY (nombre_comunidad),
FOREIGN KEY (nombre_localidad) REFERENCES localidad (nombre_localidad),
FOREIGN KEY (nombre_comunidad) REFERENCES comunidad_autonoma (nombre_comunidad)
ON DELETE CASCADE ON UPDATE CASCADE
);

/* Entidad Capital de provincia */
CREATE TABLE capital_provincia (
nombre_localidad char(50),
KEY (nombre_localidad),
cod_provincia int,
KEY (cod_provincia),
FOREIGN KEY (nombre_localidad) REFERENCES localidad (nombre_localidad),
FOREIGN KEY (cod_provincia) REFERENCES provincia(cod_provincia)
ON DELETE CASCADE ON UPDATE CASCADE
);
