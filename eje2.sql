DROP DATABASE eje2;
CREATE DATABASE eje2;
USE eje2;
CREATE TABLE libro (
claveLibro varchar(15) PRIMARY KEY,
titulo char(50),
idioma char(50),
formato char(50),
claveEditorial varchar(15)
);
CREATE TABLE tema (
claveTema varchar(15) PRIMARY KEY,
nombre char(50)
);
CREATE TABLE autor (
claveAutor varchar(15) PRIMARY KEY,
nombre char(50)
);
CREATE TABLE editorial (
claveEditorial varchar(15) PRIMARY KEY,
nombre char(50),
direccion char(50),
telefono int(9)
);
CREATE TABLE ejemplar (
claveEjemplar varchar(15) PRIMARY KEY,
claveLibro char(50),
FOREIGN KEY (claveLibro) REFERENCES libro (claveLibro),
numeroOrden int,
edicion varchar(15),
ubicacion varchar(50),
categoria char(50)
);
CREATE TABLE socio (
claveSocio varchar(15) PRIMARY KEY,
nombre char(50),
direccion varchar(50),
telefono int(9),
categoria char(50)
);
CREATE TABLE prestamo (
claveSocio varchar(50),
FOREIGN KEY (claveSocio) REFERENCES socio (claveSocio),
claveEjemplar varchar(15),
FOREIGN KEY (claveEjemplar) REFERENCES ejemplar (claveEjemplar),
numeroOrden int REFERENCES ejemplar (numeroOrden),
fechaPrestamo date,
fechaDevolucion date,
notas varchar(200)
);
CREATE TABLE trataSobre (
claveLibro char(50),
FOREIGN KEY (claveLibro) REFERENCES libro (claveLibro),
claveTema char(50),
FOREIGN KEY (claveTema) REFERENCES tema (claveTema)
);
CREATE TABLE escritoPor (
claveLibro char(50),
FOREIGN KEY (claveLibro) REFERENCES libro (claveLibro),
claveAutor char(50),
FOREIGN KEY (claveAutor) REFERENCES autor (claveAutor)
);