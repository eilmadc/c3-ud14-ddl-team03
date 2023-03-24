DROP DATABASE IF EXISTS eje4;
CREATE DATABASE eje4;
USE eje4;

CREATE TABLE departamentos (
codigo int PRIMARY KEY,
nombre nvarchar(100),
presupuesto int
);

CREATE TABLE empleados (
dni varchar(9) PRIMARY KEY,
nombre nvarchar(100),
apellidos nvarchar(255),
departamento int,
FOREIGN KEY (departamento) REFERENCES departamentos (codigo)
);