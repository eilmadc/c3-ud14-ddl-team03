/* Eliminación de la db si existe */
DROP DATABASE IF EXISTS ejercicio12;

/* Creacion de la db */
CREATE DATABASE ejercicio12;

/* Selección de la base de datos para comenzar a utilizar */
USE ejercicio12;

/*  Creación tabla --> Entidad PROFESORES */
CREATE TABLE  PROFESORES(
	NOMBRE char(50) unique,
    APELLIDO1 char(50),
    APELLIDO2 char(50),
	DNI char(8),
    DIRECCION char(150),
    TITULO char(50),
    GANA double not null,
	primary key (DNI)
);

/* Creación tabla --> Entidad CURSOS */
CREATE TABLE CURSOS (
    NOMBRE_CURSO char(50) unique,
    COD_CURSO char(50),
    DNI_PROFESOR char(8),
    MAXIMO_ALUMNOS int,
    FECHA_INICIO date,
    FECHA_FIN date,
    NUM_HORAS int not null,
    primary key (COD_CURSO),
    foreign key (DNI_PROFESOR) references PROFESORES(DNI)
    on delete set null
    on update cascade,
    constraint fecha_check check(FECHA_FIN>FECHA_INICIO)
);

INSERT INTO PROFESORES VALUES("Jean","Luc","Picard","1010101A","Nave estelar USS-Enterprise-D", "Capitan de Nave de la Federación", "20000000");
INSERT INTO CURSOS VALUES("COMO PILOTAR UNA NAVE ESTELAR","0000","1010101A","2", "2023-06-23", "2025-06-23", 10000);

/* Creación tabla --> Entidad ALUMNOS */
CREATE TABLE ALUMNOS (
    NOMBRE char(50),
    APELLIDOS1 char(50),
    APELLIDOS2 char(50),
    DNI char(8),
    DIRECCION char(150),
    CURSO char(50),
    primary key (DNI),
    foreign key (CURSO) references CURSOS(COD_CURSO)
    on delete set null
    on update cascade,
    SEXO char(1),
    FECHA_NACIMIENTO date,
    constraint sexo_check check(SEXO in ('M','H'))
);

/* Mostrar tablas */
SHOW TABLES;