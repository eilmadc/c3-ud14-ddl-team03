DROP DATABASE IF EXISTS ejercicio4;
CREATE DATABASE ejercicio4;
USE ejercicio4;

CREATE TABLE Departamentos(
codDep int PRIMARY KEY,
nombre varchar(100),
presupuesto int
);

CREATE TABLE Empleados(
DNI varchar(8) PRIMARY KEY,
nombre varchar(100),
Apellidos varchar(255),
departamento int,
FOREIGN KEY (departamento) REFERENCES Departamentos (codDep)
);
