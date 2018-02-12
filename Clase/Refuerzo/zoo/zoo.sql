/*
AUTOR: JESÚS MARÍA CALDERÓN CRESPO
GITHUB: http://www.github.com/Jeluchu
WEB: https://jeluchu.github.io
*/

/* ELIMINAR LA BASE DE DATOS SI ESXISTE, CREARLA Y USARLA */
DROP DATABASE IF EXISTS ZOO;
CREATE DATABASE ZOO;
USE ZOO;

/* CREAMOS LAS TABLAS CON SUS VARIABLES */
CREATE TABLE ZOO(
    nombre VARCHAR(20),
    ciudad VARCHAR(20),
    país VARCHAR(20),
    tamaño enum('A','B'),
    presupuesto float,
    PRIMARY KEY (nombre)
);

CREATE TABLE ESPECIE(
    nombcientifico VARCHAR(20),
    nombvulgar VARCHAR(20) NOT NULL,
    familia VARCHAR(20),
    peligro INT(1),
    PRIMARY KEY (nombcientifico)
);

CREATE TABLE ANIMAL(
    ID INT(4),
    nomzoo VARCHAR(20),
    nomespecie VARCHAR(20),
    sexo enum('Masculino', 'Femenino'),
    añonacim TIMESTAMP(4),
    país VARCHAR(20),
    PRIMARY KEY (ID),
    FOREIGN KEY (nomzoo_ANIMAL)
    REFERENCES ZOO(nombre),
    FOREIGN KEY (nomespecie_ANIMAL)
    REFERENCES ESPECIE(nombcientifico)
);
