DROP DATABASE eje1;
CREATE DATABASE eje1;
USE eje1;
CREATE TABLE estacion (
identificador_estacion char(50) PRIMARY KEY,
latitud int(10),
longitud int(10),
altitud int(10)
);
CREATE TABLE muestra (
identificador_estacion char(50) PRIMARY KEY,
FOREIGN KEY (identificador_estacion) REFERENCES estacion (identificador_estacion),
fecha date,
temperatura_minima int(4),
temperatura_maxima int(4),
precipitacion int(4),
humedad_minima int(4),
humedad_maxima int(4),
velocidad_viento_minima int(4),
velocidad_viento_maxima int(4)
);