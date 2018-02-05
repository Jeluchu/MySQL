/*
AUTOR: JESÚS MARÍA CALDERÓN CRESPO
GITHUB: http://www.github.com/Jeluchu
WEB: https://jeluchu.github.io
*/

/*
PRIMARY KEY

CLIENTES (DNI)
TIENDAS (NOMBRE)
OPERADORAS (NOMBRE)
TARIFAS(NOMBRE, NOMBRE_OPERADORAS)
MÓVILES (MODELO, MARCA)
*/

/* ELIMINAR LA BASE DE DATOS SI ESXISTE, CREARLA Y USARLA */
DROP DATABASE IF EXISTS ACTORES;
CREATE DATABASE ACTORES;
USE ACTORES;

/* CREAMOS LAS TABLAS CON SUS VARIABLES */
CREATE TABLE ACTORES(
    Codigo INT(10),
    Nombre VARCHAR(20),
    Fecha DATE,
    Nacionalidad VARCHAR(20),
    PRIMARY KEY (Codigo)
);

ALTER TABLE ACTORES MODIFY COLUMN Codigo INT(10) AUTO_INCREMENT;

CREATE TABLE PERSONAJES(
    Codigo INT(10),
    Nombre VARCHAR(20),
    Grado VARCHAR(20), /* DEL 0-10 */
    Codigo_ACTORES INT(10),
    CodigoSuperior_PERSONAJES INT(10),
    Nacionalidad VARCHAR(20),
    PRIMARY KEY (Codigo),
    FOREIGN KEY (Codigo_ACTORES)
    REFERENCES ACTORES(Codigo),
    UNIQUE (CodigoSuperior_PERSONAJES)  /* CLAVES REFLEXIVAS */
);

ALTER TABLE PERSONAJES MODIFY COLUMN Codigo INT(10) AUTO_INCREMENT;

CREATE TABLE PLANETAS(
    Codigo INT(10),
    Galaxia VARCHAR(20),
    Nombre VARCHAR(20),
    PRIMARY KEY (Codigo)
);

ALTER TABLE PLANETAS MODIFY COLUMN Codigo INT(10) AUTO_INCREMENT;

CREATE TABLE PELICULAS(
    Codigo INT(10),
    Titulo VARCHAR(20),
    Director VARCHAR(20),
    Ano TIMESTAMP(2),
    PRIMARY KEY (Codigo)
);

ALTER TABLE PELICULAS MODIFY COLUMN Codigo INT(10) AUTO_INCREMENT;

CREATE TABLE PERSONAJESPELICULAS(
    Codigo_PERSONAJES INT(10),
    Codigo_PELICULAS INT(10),
    FOREIGN KEY (Codigo_PERSONAJES)
    REFERENCES PERSONAJES(Codigo),
    FOREIGN KEY (Codigo_PELICULAS)
    REFERENCES PELICULAS(Codigo)
);

ALTER TABLE PERSONAJES MODIFY COLUMN Codigo INT(10) AUTO_INCREMENT;

CREATE TABLE NAVES(
    Codigo INT(10),
    NumTripulantes INT(3),
    Nombre VARCHAR(20),
    PRIMARY KEY (Codigo)
);

ALTER TABLE NAVES MODIFY COLUMN Codigo INT(10) AUTO_INCREMENT;

CREATE TABLE VISITAS(
    Codigo_NAVES INT(10),
    Codigo_PLANETAS INT(10),
    Codigo_PELICULAS INT(10),
    FOREIGN KEY (Codigo_NAVES)
    REFERENCES NAVES(Codigo),
    FOREIGN KEY (Codigo_PLANETAS)
    REFERENCES PLANETAS(Codigo),
    FOREIGN KEY (Codigo_PELICULAS)
    REFERENCES PELICULAS(Codigo)
);

/* INSERTAR DATOS */



