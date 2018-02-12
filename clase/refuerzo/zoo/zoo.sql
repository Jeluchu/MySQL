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
    nombre VARCHAR(30),
    ciudad VARCHAR(30),
    país VARCHAR(30),
    tamaño ENUM('A','B'),
    presupuesto FLOAT UNSIGNED,
    PRIMARY KEY (nombre)
);

CREATE TABLE ESPECIE(
    nombcientifico VARCHAR(30),
    nombvulgar VARCHAR(30) NOT NULL,
    familia VARCHAR(30),
    peligro INT(1),
    PRIMARY KEY (nombcientifico)
);

CREATE TABLE ANIMAL(
    ID INT(4),
    nomzoo VARCHAR(30),
    nomespecie VARCHAR(30),
    sexo ENUM ('Masculino', 'Femenino'),
    añonacim YEAR,
    país VARCHAR(30),
    continente VARCHAR(30),
    PRIMARY KEY (ID),
    CONSTRAINT FK_ZOO FOREIGN KEY (nomzoo)
    REFERENCES ZOO (nombre),
    CONSTRAINT FK_ESPECIE FOREIGN KEY (nomespecie)
    REFERENCES ESPECIE (nombcientifico)
);

/* PARTE B */
ALTER TABLE ANIMAL MODIFY ID INT AUTO_INCREMENT;
ALTER TABLE ANIMAL DROP FOREIGN KEY FK_ZOO;
ALTER TABLE ANIMAL ADD CONSTRAINT FK_ZOO FOREIGN KEY (nomzoo)
REFERENCES ZOO(nombre) ON DELETE SET NULL ON UPDATE CASCADE;

/* PARTE C */

INSERT INTO ZOO VALUES ('Zoo Madrid', 'Madrid', 'España', 'A', 608.42);
INSERT INTO ZOO VALUES ('Zoo Londres', 'Londres', 'UK', 'B', 0);
INSERT INTO ESPECIE VALUES ('Panthera Tigris', 'Tigre', 'Felinos', 5);
INSERT INTO ANIMAL(nomzoo,nomespecie,sexo,añonacim,país,continente) VALUES ('Zoo Madrid', 'Panthera Tigris', 'Masculino', 2013, 'India', 'Asia');

/* PARTE D */
UPDATE ZOO SET nombre='Zoo Madrid - Vodafone' WHERE nombre='Zoo Madrid';


/* MUESTRA LAS TABLAS */
SHOW TABLES;
SELECT * FROM ZOO;
SELECT * FROM ESPECIE;
SELECT * FROM ANIMAL;
