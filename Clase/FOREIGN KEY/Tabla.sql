/*
AUTOR: JESÚS MARÍA CALDERÓN CRESPO
GITHUB: http://www.github.com/Jeluchu
WEB: https://jeluchu.github.io
*/

DROP DATABASE IF EXISTS Familia;
CREATE DATABASE Familia;
USE Familia;

CREATE TABLE Padre (
    ID INT NOT NULL,
    PRIMARY KEY (ID)
) ENGINE=INNODB;

CREATE TABLE Hijo (
    ID INT,
    Padre_ID INT,
    INDEX par_ind (padre_ID),
    FOREIGN KEY (Padre_ID)
        REFERENCES Padre(ID)
        ON DELETE CASCADE
) ENGINE=INNODB;
