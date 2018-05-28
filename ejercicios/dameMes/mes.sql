DROP DATABASE IF EXISTS MESES;
CREATE DATABASE MESES;
USE MESES;

CREATE TABLE Meses (
	Num INT 
	PRIMARY KEY, 
	Mes VARCHAR(20) 
);

INSERT INTO Meses VALUES (1,'Enero'),(2,'Febrero'),(3,'Marzo'),(4,'Abril'),(5,'Mayo'),(6,'Junio'),(7,'Julio'),(8,'Agosto'),(9,'Septiembre'),(10,'Octubre'),(11,'Noviembre'),(12,'Diciembre');

SELECT * FROM Meses;
