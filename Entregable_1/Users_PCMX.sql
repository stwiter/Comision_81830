-- Creamos la base de datos con la iformación previamente revisada acorde al DER

CREATE DATABASE Bitacora;

-- Despues de crear la db procedemos a actualizar para que refresque y la usamos para activarla

USE bitacora;

-- Una vez creada la DB procedemos a crear las tablas según el critrerio de nuestro diagrama 

CREATE TABLE Usuarios (
    id_Usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nombre VARCHAR(30) NOT NULL,
    apellido_paterno VARCHAR(30) NOT NULL,
    apellido_materno VARCHAR(30) NOT NULL,
    email VARCHAR(100) UNIQUE,
    unidad_de_negocio VARCHAR(100) DEFAULT "CDMX",
    fecha_ingreso date
);

-- Insertamos datos a nuestras columnas para que tengan un dato o información

INSERT INTO Usuarios (id_usuario, nombre, apellido_paterno, apellido_materno, email, unidad_de_negocio, fecha_ingreso)
    VALUES 
(1, 'Freemon', 'Creaven', 'Bingle', 'fbingle0@prnewswire.com', null, '2024-12-25'),
(2, 'Mimi', 'Isaksen', 'Finessy', 'mfinessy1@ucla.edu', null, '2016-10-26'),
(3, 'Emile', 'Vellacott', 'Boatright', 'eboatright2@disqus.com', null, '2018-05-04'),
(4, 'Sayers', 'Bridgeman', 'Freeberne', 'sfreeberne3@nytimes.com', null, '2011-12-28'),
(5, 'Imelda', 'Symons', 'Gwyer', 'igwyer4@patch.com', null, '2012-10-31'),
(6, 'Norene', 'Hellsdon', 'Hawkins', 'nhawkins5@independent.co.uk', null, '2018-02-21'),
(7, 'Delly', 'Huggon', 'Peach', 'dpeach6@wikimedia.org', null, '2014-09-21'),
(8, 'Myrta', 'Seyfart', 'Heugh', 'mheugh7@google.es', null, '2008-09-29'),
(9, 'Christoforo', 'O''Halligan', 'Trorey', 'ctrorey8@networkadvertising.org', null, '2015-04-13'),
(10, 'Vivienne', 'Brownlie', 'Waszczyk', 'vwaszczyk9@squidoo.com', null, '2009-08-11'),
(11, 'Carin', 'Hick', 'Galliver', 'cgallivera@moonfruit.com', null, '2012-06-05'),
(12, 'Eolanda', 'Rafe', 'Cuerda', 'ecuerdab@nasa.gov', null, '2024-09-21'),
(13, 'Yorgos', 'Woodruff', 'Ratnege', 'yratnegec@ycombinator.com', null, '2018-10-27'),
(14, 'Cilka', 'Marsh', 'Cuseck', 'ccuseckd@businesswire.com', null, '2007-07-17'),
(15, 'Griffin', 'Alexsandrovich', 'Orkney', 'gorkneye@hao123.com', null, '2013-08-06'),
(16, 'Kennith', 'Trebbett', 'Treneer', 'ktreneerf@nature.com', null, '2021-10-28'),
(17, 'Haskel', 'Cutteridge', 'Turvey', 'hturveyg@123-reg.co.uk', null, '2008-12-01'),
(18, 'Celia', 'Scrowby', 'Gheerhaert', 'cgheerhaerth@globo.com', null, '2023-09-24'),
(19, 'Sada', 'Gopsell', 'Kalewe', 'skalewei@alibaba.com', null, '2009-07-28'),
(20, 'Moyna', 'Waltering', 'Arghent', 'marghentj@buzzfeed.com', null, '2014-04-21'),
(21, 'Mallory', 'Clubb', 'Richardet', 'mrichardetk@quantcast.com', null, '2022-06-16'),
(22, 'Elisabetta', 'Marlor', 'MacPaik', 'emacpaikl@ted.com', null, '2015-11-20'),
(23, 'Leroy', 'Dyos', 'Renzullo', 'lrenzullom@springer.com', null, '2022-12-29'),
(24, 'Clair', 'Havoc', 'Shankle', 'cshanklen@taobao.com', null, '2016-06-03'),
(25, 'Waiter', 'Klauber', 'Curneen', 'wcurneeno@vk.com', null, '2007-06-11'),
(26, 'Ferne', 'Girodin', 'Luxon', 'fluxonp@hud.gov', null, '2017-02-10'),
(27, 'Sabrina', 'Durrance', 'Timby', 'stimbyq@spotify.com', null, '2019-12-20'),
(28, 'Joachim', 'Jankiewicz', 'Harborow', 'jharborowr@techcrunch.com', null, '2016-05-29'),
(29, 'Antony', 'Rottger', 'Tamburo', 'atamburos@mapy.cz', null, '2016-02-17'),
(30, 'Flin', 'Michieli', 'Suller', 'fsullert@merriam-webster.com', null, '2018-04-02'),
(31, 'Pavla', 'Dundon', 'Potteril', 'ppotterilu@phpbb.com', null, '2019-07-30'),
(32, 'Adriano', 'Fenna', 'Allsepp', 'aallseppv@usgs.gov', null, '2008-05-03'),
(33, 'Cyb', 'Mattson', 'Cossell', 'ccossellw@etsy.com', null, '2009-02-19'),
(34, 'Miles', 'Klulisek', 'Wintour', 'mwintourx@walmart.com', null, '2018-09-07'),
(35, 'Hewie', 'Runsey', 'Byham', 'hbyhamy@soup.io', null, '2017-09-06'),
(36, 'Easter', 'Bastian', 'Harder', 'eharderz@shop-pro.jp', null, '2011-05-18'),
(37, 'Winnie', 'Attow', 'Ferryman', 'wferryman10@uol.com.br', null, '2012-02-13'),
(38, 'Prudi', 'Bruckenthal', 'Keggin', 'pkeggin11@phoca.cz', null, '2007-05-05'),
(39, 'Heddie', 'Grahlmans', 'Stroban', 'hstroban12@google.de', null, '2018-05-30'),
(40, 'Tildie', 'Ferras', 'Leadley', 'tleadley13@geocities.jp', null, '2020-10-03'),
(41, 'Gerianne', 'Bussel', 'Antrack', 'gantrack14@taobao.com', null, '2008-03-14'),
(42, 'Farrand', 'Brixey', 'Adin', 'fadin15@businessweek.com', null, '2015-06-08'),
(43, 'Roma', 'Bracknall', 'Lowery', 'rlowery16@bravesites.com', null, '2018-07-20'),
(44, 'Chet', 'Cord', 'Ortega', 'cortega17@wufoo.com', null, '2024-08-12'),
(45, 'Urbano', 'Rowbury', 'Tebbett', 'utebbett18@squidoo.com', null, '2018-05-08'),
(46, 'Kristina', 'Westell', 'Simmonds', 'ksimmonds19@abc.net.au', null, '2022-06-17'),
(47, 'Ingaberg', 'Avent', 'Dellit', 'idellit1a@spotify.com', null, '2017-12-30'),
(48, 'Flore', 'McGonnell', 'Caccavari', 'fcaccavari1b@ehow.com', null, '2019-01-16'),
(49, 'Eduard', 'Peakman', 'Bolver', 'ebolver1c@ning.com', null, '2008-03-27'),
(50, 'Zelma', 'Orpwood', 'Reinert', 'zreinert1d@domainmarket.com', null, '2011-08-03');


    -- Insertamos la TABLA "Credenciales" esto tendra relación con la TABLA "Usuarios"

CREATE TABLE Credenciales (
    id_credenciales INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido_paterno VARCHAR(30) NOT NULL,
    apellido_materno VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    cre_office365 VARCHAR(20),
    cre_equipo VARCHAR(20),
    user_netship VARCHAR(10),
    cre_netship VARCHAR(10),
    activo BOOLEAN
);
