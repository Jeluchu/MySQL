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
    tamaño ENUM('A','B'),
    presupuesto FLOAT UNSIGNED,
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
    sexo ENUM('Masculino', 'Femenino'),
    añonacim YEAR,
    país VARCHAR(20),
    continente VARCHAR(20),
    PRIMARY KEY (ID),
    FOREIGN KEY (nomzoo)
    REFERENCES ZOO (nombre),
    FOREIGN KEY (nomespecie)
    REFERENCES ESPECIE (nombcientifico)
);

/* PARTE B */
ALTER TABLE ANIMAL MODIFY ID INT AUTO_INCREMENT;
ALTER TABLE ANIMAL DROP FOREIGN KEY FK_ZOO;
ALTER TABLE ANIMAL ADD CONSTRAINT FK_ZOO FOREIGN KEY (nomzoo)
REFERENCES ZOO(nombre) ON DELETE SET NULL ON UPDATE CASCADE;

/* PARTE C */

INSERT INTO ZOO VALUES ('Zoo Madrid', 'Madrid', 'España', 'A', 608,42);
INSERT INTO ESPECIE VALUES ('Panthera Tigris', 'Tigre', 'Felinos', 'Alto');
INSERT INTO ANIMAL VALUES ('Zoo Madrid', 'Panthera Tigris', 'Macho', '2013', 'India', 'Asia');
