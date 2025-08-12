-- Creamos la base de datos con el nombre de Bitacora
CREATE DATABASE Bitacora;

-- Activamos el uso de la DB 
USE Bitacora;

-- Tabla Usuarios que contenga la informacion principal de los usuarios
CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    codigo_usuario CHAR(5) UNIQUE, -- código de 5 dígitos servira como identificador
    nombre VARCHAR(30) NOT NULL,
    apellido_paterno VARCHAR(30) NOT NULL,
    apellido_materno VARCHAR(30) NOT NULL,
    email VARCHAR(100) UNIQUE,
    unidad_de_negocio VARCHAR(100) DEFAULT 'CDMX',
    fecha_ingreso DATE
);

-- Tabla Credenciales que contiene los datos mas relevantes de los usuarios
CREATE TABLE Credenciales (
    id_credenciales INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    cre_office365 VARCHAR(20),
    cre_equipo VARCHAR(20),
    user_netship VARCHAR(10),
    cre_netship VARCHAR(10),
    activo BOOLEAN,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Tabla Licenciamiento que contiene la informacion de cada estacion de trabajo bajo licencia
CREATE TABLE Licenciamiento (
    id_licenciamiento INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    nombre_equipo VARCHAR(50),
    nombre_dominio VARCHAR(50),
    correo_maestro_office365 VARCHAR(100),
    numero_serie_office365 VARCHAR(50),
    fecha_compra_office365 DATE,
    numero_serie_antivirus VARCHAR(50),
    fecha_compra_antivirus DATE,
    activo BOOLEAN,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);