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

-- Despues de crear las tablas procedemos a insertar datos con datos al azar para no generar conflicto con datos reales
INSERT INTO usuarios (id_usuario, codigo_usuario, nombre, apellido_paterno, apellido_materno, email, unidad_de_negocio, fecha_ingreso) VALUES
 (1, '43960', 'Dael', 'Ennever', 'Matthewman', 'dmatthewman0@devhub.com', 'Mexico', '2009-07-26'),
 (2, '92260', 'Bobbe', 'Simonyi', 'Klosser', 'bklosser1@creativecommons.org', 'Mexico', '2008-06-14'),
 (3, '02182', 'Wally', 'Pimlett', 'Hoggan', 'whoggan2@theguardian.com', 'Mexico', '2029-06-29'),
 (4, '71418', 'Chrisy', 'Iredale', 'Bass', 'cbass3@4shared.com', 'Mexico', '2012-03-07'),
 (5, '97923', 'Brianne', 'Kenzie', 'Haug', 'bhaug4@networksolutions.com', 'Mexico', '2014-11-16'),
 (6, '76643', 'Ardella', 'Skupinski', 'Barizeret', 'abarizeret5@columbia.edu', 'Mexico', '2025-01-22'),
 (7, '07112', 'Thorvald', 'Lenney', 'Stubbert', 'tstubbert6@independent.co.uk', 'Mexico', '2022-08-30'),
 (8, '31883', 'Theadora', 'Kettle', 'Vittel', 'tvittel7@dailymotion.com', 'Mexico', '2010-04-02'),
 (9, '90352', 'Deloria', 'Spruce', 'Bordessa', 'dbordessa8@omniture.com', 'Mexico', '2015-02-16'),
 (10, '59057', 'Dunn', 'Bergstram', 'Vasic', 'dvasic9@chron.com', 'Mexico', '2022-01-22'),
 (11, '00048', 'Brianna', 'Ridolfi', 'Balcers', 'bbalcersa@businessinsider.com', 'Mexico', '2008-07-16'),
 (12, '55329', 'Dorie', 'Poles', 'Tolefree', 'dtolefreeb@netvibes.com', 'Mexico', '2030-06-06'),
 (13, '27479', 'Steffane', 'Ducrow', 'Heliar', 'sheliarc@privacy.gov.au', 'Mexico', '2011-10-14'),
 (14, '44808', 'Gianni', 'Mattiussi', 'Shortland', 'gshortlandd@histats.com', 'Mexico', '2018-01-30'),
 (15, '70853', 'Jenn', 'Anfonsi', 'McCurtain', 'jmccurtaine@hao123.com', 'Mexico', '2012-06-13'),
 (16, '51919', 'Teirtza', 'Ausello', 'Dahl', 'tdahlf@domainmarket.com', 'Mexico', '2026-08-05'),
 (17, '99267', 'Adey', 'Sam', 'Cobbin', 'acobbing@unicef.org', 'Mexico', '2020-10-08'),
 (18, '67637', 'Marisa', 'Dhenin', 'Jessen', 'mjessenh@g.co', 'Mexico', '2013-12-13'),
 (19, '26907', 'Quincy', 'Oseman', 'De Ambrosi', 'qdeambrosii@marketwatch.com', 'Mexico', '2027-07-12'),
 (20, '35567', 'Crista', 'Riddel', 'Forsythe', 'cforsythej@amazon.co.jp', 'Mexico', '2027-07-17'),
 (21, '98219', 'Angie', 'Bosket', 'Manus', 'amanusk@cafepress.com', 'Mexico', '2013-06-08'),
 (22, '84141', 'Alane', 'Cullen', 'Polland', 'apollandl@google.com.au', 'Mexico', '2021-07-11'),
 (23, '02873', 'Lonni', 'Giraudeau', 'Yepiskov', 'lyepiskovm@amazon.com', 'Mexico', '2007-10-26'),
 (24, '09045', 'Wiley', 'Leacy', 'Godden', 'wgoddenn@smugmug.com', 'Mexico', '2010-08-18'),
 (25, '63977', 'Case', 'Blackah', 'Greenrodd', 'cgreenroddo@cnet.com', 'Mexico', '2020-08-01'),
 (26, '47673', 'Romy', 'Ogilvie', 'Ashbe', 'rashbep@homestead.com', 'Mexico', '2007-08-12'),
 (27, '17207', 'Annnora', 'Druery', 'McCheyne', 'amccheyneq@example.com', 'Mexico', '2014-04-14'),
 (28, '89876', 'Roxane', 'Ebbs', 'Bullman', 'rbullmanr@patch.com', 'Mexico', '2026-07-05'),
 (29, '81878', 'Adorne', 'Spier', 'Cyseley', 'acyseleys@odnoklassniki.ru', 'Mexico', '2027-11-21'),
 (30, '88132', 'Francklin', 'Writer', 'Scadding', 'fscaddingt@salon.com', 'Mexico', '2012-10-07'),
 (31, '19300', 'Clary', 'Malitrott', 'Duthie', 'cduthieu@foxnews.com', 'Mexico', '2011-08-30'),
 (32, '31149', 'Gray', 'Dempster', 'Haldenby', 'ghaldenbyv@spiegel.de', 'Mexico', '2017-12-10'),
 (33, '03000', 'Rhianon', 'Robins', 'Gettings', 'rgettingsw@google.com', 'Mexico', '2025-02-14'),
 (34, '26833', 'Nance', 'Gasperi', 'Drinkall', 'ndrinkallx@dot.gov', 'Mexico', '2018-04-17'),
 (35, '31094', 'Boycie', 'Heighway', 'Bambridge', 'bbambridgey@soup.io', 'Mexico', '2025-06-13'),
 (36, '55144', 'Maxim', 'Adamkiewicz', 'Pott', 'mpottz@odnoklassniki.ru', 'Mexico', '2021-12-20'),
 (37, '54156', 'Aeriel', 'Falls', 'Clurow', 'aclurow10@bloglovin.com', 'Mexico', '2029-06-02'),
 (38, '43926', 'Barris', 'O''Scollain', 'Litster', 'blitster11@springer.com', 'Mexico', '2027-10-28'),
 (39, '23970', 'Kayne', 'Beaudry', 'Scully', 'kscully12@nationalgeographic.com', 'Mexico', '2028-11-11'),
 (40, '84996', 'Kala', 'De la croix', 'Somerset', 'ksomerset13@apple.com', 'Mexico', '2024-05-14'),
 (41, '98381', 'Rachele', 'Bretherick', 'Gutowski', 'rgutowski14@t-online.de', 'Mexico', '2025-08-20'),
 (42, '54014', 'Nesta', 'Jovasevic', 'Klos', 'nklos15@mtv.com', 'Mexico', '2020-01-31'),
 (43, '48644', 'Junette', 'Kindread', 'Ingraham', 'jingraham16@smh.com.au', 'Mexico', '2010-12-20'),
 (44, '12652', 'Babara', 'Pree', 'Triggs', 'btriggs17@constantcontact.com', 'Mexico', '2008-09-25'),
 (45, '91274', 'Ethelbert', 'Mottini', 'Benoey', 'ebenoey18@columbia.edu', 'Mexico', '2008-07-22'),
 (46, '39484', 'Godiva', 'Bezant', 'Westall', 'gwestall19@businesswire.com', 'Mexico', '2018-08-13'),
 (47, '13245', 'Dario', 'Colthard', 'Gatland', 'dgatland1a@samsung.com', 'Mexico', '2016-02-20'),
 (48, '27722', 'Ferguson', 'Rhyme', 'Duffie', 'fduffie1b@eepurl.com', 'Mexico', '2028-01-09'),
 (49, '30414', 'Marlyn', 'Bisterfeld', 'Dankov', 'mdankov1c@de.vu', 'Mexico', '2011-09-04'),
 (50, '33993', 'Paule', 'Fulham', 'Ranstead', 'pranstead1d@tamu.edu', 'Mexico', '2013-03-26');