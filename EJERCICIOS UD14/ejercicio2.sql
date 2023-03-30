DROP DATABASE IF EXISTS ejercicio2;
CREATE DATABASE ejercicio2;
USE ejercicio2;

CREATE TABLE temas (
	clave_tema int PRIMARY KEY,
    nombre varchar(40)
);

CREATE TABLE autores (
	clave_autor int PRIMARY KEY,
	nombre varchar(60)
);

CREATE TABLE editoriales (
	clave_editorial smallint PRIMARY KEY,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15)
);

CREATE TABLE libros (
	clave_libro int PRIMARY KEY,
    titulo varchar(60),
    idioma varchar(15),
    formato varchar(15),
    clave_editorial smallint,
    FOREIGN KEY (clave_editorial) REFERENCES editoriales (clave_editorial)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ejemplares (
	clave_ejemplar int PRIMARY KEY,
    clave_libro int,
    numero_orden smallint, 
    edicion smallint,
    ubicacion varchar(15),  
    categoria char,
	FOREIGN KEY (clave_libro) REFERENCES libros (clave_libro)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE socios (
	clave_socio int PRIMARY KEY,
    nombre varchar(60),
    direccion varchar(60),
    telefono varchar(15),
    categoria char
);

CREATE TABLE prestamos (
	clave_socio int,
    clave_ejemplar int,
    numero_orden smallint,
    fecha_prestamo date,
    fecha_devolucion date, 
    notas blob,
    PRIMARY KEY(clave_socio, clave_ejemplar),
    FOREIGN KEY (clave_socio) REFERENCES socios (clave_socio),
    FOREIGN KEY (clave_ejemplar) REFERENCES ejemplares (clave_ejemplar)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tratan_sobre (
	clave_libro int,
    clave_tema int,
	PRIMARY KEY(clave_libro, clave_tema),
    FOREIGN KEY (clave_libro) REFERENCES libros (clave_libro),
    FOREIGN KEY (clave_tema) REFERENCES temas (clave_tema)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE escritos_por (
	clave_libro int,
    clave_autor int,
	PRIMARY KEY(clave_libro, clave_autor),
    FOREIGN KEY (clave_libro) REFERENCES libros (clave_libro),
    FOREIGN KEY (clave_autor) REFERENCES autores (clave_autor)
);

