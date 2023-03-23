CREATE DATABASE ejercicio17;
USE ejercicio17;
CREATE TABLE anno (
num_anno int PRIMARY KEY
);
CREATE TABLE profesor (
dni char(9) PRIMARY KEY, 
nombre char(50) NOT NULL,
direccion char(50),
telefono char(50),
email char(50),
num_seg_soc char(50),
cod_interno char(50),
annos_antig_assign int,
tutor boolean,
annos_antig_tutor int
);
CREATE TABLE aula(
cod_aula char(50) PRIMARY KEY,
nombre char(50) UNIQUE,
numero char(50) UNIQUE,
area int,
ocupacion boolean
);
CREATE TABLE curso (
cod_curso char(50) PRIMARY KEY,
tutor char(9),
FOREIGN KEY (tutor) REFERENCES profesor (dni),
anno int,
FOREIGN KEY (anno) REFERENCES anno (num_anno)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE anno_curso (
num_anno int,
cod_curso char(50),
KEY (num_anno),
FOREIGN KEY (num_anno) REFERENCES anno (num_anno),
KEY (cod_curso),
FOREIGN KEY (cod_curso) REFERENCES curso (cod_curso)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE horario (
cod_horario int PRIMARY KEY,
num_hora char(50),
dia_semana char(50),
cod_aula char(50) NOT NULL,
FOREIGN KEY (cod_aula) REFERENCES aula (cod_aula)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE ciclo (
nombre char(50) PRIMARY KEY,
cod_interno char(50)
);
CREATE TABLE grado (
nombre char(50) PRIMARY KEY,
nombre_ciclo char(50),
FOREIGN KEY (nombre_ciclo) REFERENCES ciclo (nombre)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE curso_ciclo (
cod_curso char(50),
nombre_ciclo char(50),
KEY (cod_curso),
FOREIGN KEY (cod_curso) REFERENCES curso (cod_curso),
KEY (nombre_ciclo),
FOREIGN KEY (nombre_ciclo) REFERENCES ciclo (nombre)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE asignatura (
nombre char(50) PRIMARY KEY,
cod_interno char(50) NOT NULL,
cod_europeo char(50) NOT NULL,
cod_aula char(50),
FOREIGN KEY (cod_aula) REFERENCES aula (cod_aula)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE asignatura_requerimiento (
nombre_asign1 char(50),
nombre_asign2 char(50),
KEY (nombre_asign1),
FOREIGN KEY (nombre_asign1) REFERENCES asignatura (nombre),
KEY (nombre_asign2),
FOREIGN KEY (nombre_asign2) REFERENCES asignatura (nombre)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE ciclo_asignatura (
nombre_asign char(50),
nombre_ciclo char(50),
KEY (nombre_asign),
FOREIGN KEY (nombre_asign) REFERENCES asignatura (nombre),
KEY (nombre_ciclo),
FOREIGN KEY (nombre_ciclo) REFERENCES ciclo (nombre)
ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE profesor_asignatura (
nombre_asign char(50),
dni char(9),
fecha_inicio date NOT NULL,
fecha_fin date,
KEY (nombre_asign),
FOREIGN KEY (nombre_asign) REFERENCES asignatura (nombre),
KEY (dni),
FOREIGN KEY (dni) REFERENCES profesor (dni)
ON DELETE CASCADE ON UPDATE CASCADE
);