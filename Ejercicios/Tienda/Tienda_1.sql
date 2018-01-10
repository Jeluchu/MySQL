DROP DATABASE IF EXISTS Tienda;
CREATE DATABASE Tienda;
USE Tienda;

CREATE TABLE PERSONA (
    Nombre VARCHAR(20) NOT NULL,
    Primer_Apellido VARCHAR(20) NOT NULL,
    Segundo_Apellido VARCHAR(20) NOT NULL,
    Edad TINYINT unsigned NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    PRIMARY KEY (Nombre, Primer_Apellido, Segundo_Apellido)
 );


CREATE TABLE PRODUCTO (
    ID INT AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(20) NOT NULL,
    Descripción TEXT(6000) NOT NULL,
    Imagen VARCHAR(255) NOT NULL,
    Precio FLOAT NOT NULL,
    PRIMARY KEY (ID)
    );

CREATE TABLE PEDIDOS (
    Nombre_PERSONA VARCHAR(20),
    Primer_Apellido_PERSONA VARCHAR(20),
    Segundo_Apellido_PERSONA VARCHAR(20),
    ID_PRODUCTO INT,
    Cantidad INT,
    FOREIGN KEY (Nombre_PERSONA, Primer_Apellido_PERSONA, Segundo_Apellido_PERSONA)
    REFERENCES PERSONA (Nombre, Primer_Apellido, Segundo_Apellido),
    FOREIGN KEY (ID_PRODUCTO)
    REFERENCES PRODUCTO (ID)
);
