-- Creamos la base de datos con la iformación previamente revisada acorde al DER

CREATE DATABASE Bitacora;

-- Despues de crear la db procedemos a actualizar para que refresque y la usamos para activarla

USE DATABASE Bitacora;

-- Una vez creada la DB procedemos a crear las tablas según el critrerio de nuestro diagrama 

CREATE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nombre VARCHAR(30) NOT NULL,
    apellido_paterno VARCHAR(30) NOT NULL,
    apellido_materno VARCHAR(30) NOT NULL,
    email VARCHAR(100) UNIQUE,
    unidad_de_negocio VARCHAR(100) DEFAULT "CDMX",
    fecha_ingreso date
);
