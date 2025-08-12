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

-- Insertamos datos a nuestras columna Credenciales para que tengan un dato o información

INSERT INTO Credenciales (id_credenciales, nombre, apellido_paterno, apellido_materno, email, cre_office365, cre_equipo, user_netship, cre_netship, activo) VALUES
 (1, 'Belita', 'Klarzynski', 'Roggers', 'froggers0@boston.com', 'eL024qH,y''', 'iN8A?rKP=TU_L', 'Frederick', 'qT6AxMa0+', true),
 (2, 'Pam', 'Allwright', 'Spiers', 'espiers1@nymag.com', 'pU2j5''d3l2GoH_l@', 'vW6wP4ld', 'Ellis', 'nG3ltgw2', false),
 (3, 'Regen', 'Lawden', 'Evershed', 'eevershed2@loc.gov', 'cN795~5_wD1ex', 'qL7C=EfP3s6~', 'Emili', 'jU98I7gBf8', true),
 (4, 'Donnajean', 'Kelway', 'Appleyard', 'rappleyard3@nba.com', 'sP9BV4zp3c=.', 'oN1&O782r', 'Roseann', 'uU8L8BP_M', false),
 (5, 'Augusto', 'Dinsmore', 'Fido', 'kfido4@feedburner.com', 'hS3,A85D~&.', 'bL4Jy8p''Px', 'Kay', 'vB55VL9X8', false),
 (6, 'Davine', 'Pilmore', 'Brunsden', 'lbrunsden5@4shared.com', 'eJ1mGF_4+UX4', 'yX439lL18I', 'Louis', 'kK9b5s8', true),
 (7, 'Jasper', 'Konzel', 'Leborgne', 'rleborgne6@g.co', 'cN1DBndvu0SFa', 'fZ6WDu8+(utwW', 'Ray', 'wF2mJMB2', true),
 (8, 'Kimbell', 'Macia', 'Lodden', 'alodden7@de.vu', 'hP90m5L~4', 'nW8b.8YqTkRZ4F', 'Allie', 'vM6t8kAO', false),
 (9, 'Nissie', 'Haycraft', 'Inkle', 'minkle8@tuttocitta.it', 'sW5kkV+1P6', 'bT1vMSL&a3', 'Michel', 'jX7ID8M?', false),
 (10, 'Ana', 'Van de Velde', 'Plaskitt', 'aplaskitt9@creativecommons.org', 'aI8xCij.w(', 'jW2H0ONQ', 'Arliene', 'lQ96W', false),
 (11, 'Gino', 'Erik', 'Hencke', 'shenckea@discuz.net', 'wC0N1dk5''43T', 'eJ24knIgS51*J+', 'Sergio', 'iM4Qb4cz', false),
 (12, 'Fitz', 'Popley', 'Quinsee', 'aquinseeb@netscape.com', 'gI9i6OouVFS3*', 'lP1AkHZCbhQtz`', 'Avie', 'bD6K8GWDHf', true),
 (13, 'Tresa', 'Scranny', 'Soutter', 'ksoutterc@etsy.com', 'gU0SAU@iC4xepnS', 'dS0XJtEA9IqgziPRv', 'Kissie', 'sM9D@kX', true),
 (14, 'Cordelie', 'Peirson', 'Pont', 'jpontd@cam.ac.uk', 'fH43zdS''', 'jJ1aaIGURi449I', 'Juan', 'zY6xb8hU', true),
 (15, 'Peri', 'Flann', 'Lively', 'mlivelye@jiathis.com', 'lJ98afJ(AS1', 'pM8f8IOag*', 'Murvyn', 'oZ2o7nscI', false),
 (16, 'Bibbye', 'Inglefield', 'Brader', 'nbraderf@jiathis.com', 'dT537+Xfj(V_3y', 'kN8x(PI3y)KDj', 'Niccolo', 'bB29kZLn', true),
 (17, 'Bartie', 'Searl', 'Winkle', 'hwinkleg@lulu.com', 'lK51B9I2X~', 'gF0M4v''X', 'Hillary', 'oN46K8', false),
 (18, 'Lona', 'Tordoff', 'Yakushkev', 'syakushkevh@stanford.edu', 'zR66A6e3J', 'cO8~3yP?@L8AF', 'Seumas', 'sE9f9VRIv', false),
 (19, 'Georas', 'Heffron', 'Gavigan', 'agavigani@ebay.com', 'iH9P1v3''N', 'kV1MLhtcl54+`Shq', 'Adele', 'vS73D8DAy', true),
 (20, 'Alia', 'Purchon', 'Ramalho', 'gramalhoj@dot.gov', 'uO7toZJA_mk.,gl', 'xU0X88sKcu9V=)&', 'Gifford', 'cY80eY@x', true),
 (21, 'Philly', 'Stainland', 'Moresby', 'vmoresbyk@alexa.com', 'vP4KAVG33Dl6K', 'zN7~44OIV', 'Veda', 'xH9npUOIp4', true),
 (22, 'Cass', 'Castagna', 'Guillem', 'jguilleml@shop-pro.jp', 'cJ7+L1+Y8H', 'rG81XgphW4', 'Jeane', 'iE9wJihA5', false),
 (23, 'Maxine', 'Slaughter', 'Rackley', 'arackleym@deviantart.com', 'uV3r8gz''Hf7AFk5', 'wA9)dP=v3IC_TljI', 'Adah', 'vB1mP.r', false),
 (24, 'Abra', 'Mc Meekan', 'Cleator', 'bcleatorn@hubpages.com', 'bP4C4Gry66BUE', 'fA6U7yE&9kcq', 'Bernelle', 'qL4AFpS', false),
 (25, 'Tina', 'Quest', 'Dubbin', 'ldubbino@msn.com', 'xL5vm)=L', 'sA63Ldr~qxW*', 'Lotta', 'jF8M9PLB', false),
 (26, 'Yevette', 'Ashburner', 'Troop', 'itroopp@cbslocal.com', 'nN28.4_f&K5_`A', 'aX4dDFLtgocbc=P4', 'Iolande', 'qO2=&8=H', true),
 (27, 'Marty', 'Kuhnt', 'Andrioletti', 'kandriolettiq@odnoklassniki.ru', 'cJ0.bLoL''Ps07', 'lX7Zf34xuM0?8', 'Kristel', 'nE52_4A', false),
 (28, 'Jan', 'Lefeuvre', 'Inmett', 'minmettr@unesco.org', 'mY31Bq''m38kSJ', 'yS5`N88D', 'Myrle', 'iY311ZGR', false),
 (29, 'Stafani', 'Chittleburgh', 'Leishman', 'tleishmans@who.int', 'nF0~ELLc.Li', 'kC5@*c&Uu*', 'Tani', 'cE0XIn44', false),
 (30, 'Corabella', 'Buddle', 'Dyas', 'mdyast@pen.io', 'uK0OSuYoQP*', 'gG6Du''bp9', 'Meggi', 'kB3ks)*D1', true),
 (31, 'Mareah', 'Gatherer', 'Carratt', 'acarrattu@latimes.com', 'sN5p?n7yAle', 'oI8K332`3z', 'Averil', 'xW3AQK@', true),
 (32, 'Rubie', 'Britian', 'Maypole', 'omaypolev@zdnet.com', 'tE7fP?56+wOrq?f', 'oU2QHGdA', 'Olivie', 'rW4vALfX', false),
 (33, 'Burch', 'Bahl', 'Graalman', 'rgraalmanw@mlb.com', 'uZ1l5s*0AYG~8', 'bV3e13PNOuNI9Sw', 'Raddy', 'zK1s_Ay2HN', false),
 (34, 'Mariellen', 'Saggers', 'Amner', 'wamnerx@home.pl', 'hZ9*zX0U0kJL0', 'aP34PC3LtPRPYx', 'Worth', 'QuZCrxj', false),
 (35, 'Sophie', 'Scourge', 'Heinz', 'theinzy@yellowpages.com', 'mO9q8PrrXse', 'nS4XP@nh8', 'Theressa', 'lG842OS', true),
 (36, 'Elayne', 'Mollene', 'Ambridge', 'nambridgez@paypal.com', 'tN4S0DFjDa034wSn', 'mP04=&HkVZ)L=', 'Norman', 'jL96q84H+', true),
 (37, 'Angelia', 'Seamarke', 'Bardell', 'dbardell10@alexa.com', 'cA919nUlLv', 'kW4(LUAnc', 'Dinny', 'bU8eA9Bv2@', false),
 (38, 'Field', 'Kohrding', 'Andreassen', 'randreassen11@trellian.com', 'hR1l0EAc42q', 'fF6erD4Nw', 'Reed', 'bI4kd8oo', false),
 (39, 'Leicester', 'Espinoza', 'Cinderey', 'mcinderey12@furl.net', 'lQ6gSeym4z9I', 'iZ1wPzL@AJY7KIk', 'Micheal', 'xW5N_A48', true),
 (40, 'Ulrica', 'Duiged', 'Labone', 'vlabone13@cargocollective.com', 'lR4CDawlW(UL', 'dE5*,Oi''e+kd', 'Verena', 'xR1GKI4', false),
 (41, 'Adelaide', 'Merwe', 'Jaye', 'jjaye14@ask.com', 'sY0Y4)m2?4''39XZ', 'vR62.Ydt', 'Janeva', 'aD5UHqt4mA', false),
 (42, 'Ardene', 'Jemmett', 'Dray', 'jdray15@wikipedia.org', 'yH9419I3s4Y0Fn', 'lV0RrJ', 'Jasmine', 'vG8@d+', false),
 (43, 'Darby', 'Spurryer', 'Davana', 'jdavana16@techcrunch.com', 'jN3u4Skg@h)7B', 'yL1IPvP''2Ud', 'John', 'kX2IVop3t', true),
 (44, 'Rafaela', 'Kryszka', 'Vassie', 'tvassie17@elpais.com', 'cM6VL)MB9I', 'tC8+X,Af@y', 'Tan', 'oG7QRVRz', false),
 (45, 'Tiertza', 'Kapiloff', 'Harriman', 'aharriman18@wordpress.com', 'nI0BpG5N~j`4a', 'vX0a9exV*iRQ1b', 'Anna', 'zDvYD7T', true),
 (46, 'Robinet', 'Yarrington', 'Betser', 'lbetser19@gravatar.com', 'uS5)5M+)vF`u.1', 'qF1*meQav&7', 'Lorine', 'hFt0L', false),
 (47, 'Skye', 'Culkin', 'Bensusan', 'cbensusan1a@nps.gov', 'dS6''Bn,o8', 'sX2(9P14QC8kiKhx', 'Caron', 'dE04Iz', true),
 (48, 'Jarrod', 'Toope', 'Beynon', 'wbeynon1b@live.com', 'wO9ARBvZP8io8MH', 'uL91plTG', 'Wait', 'lJ4ZacPk', true),
 (49, 'Nertie', 'Wyon', 'Kief', 'kkief1c@bizjournals.com', 'mQ1*R0OL', 'hI45A7DFuw_Dl83O', 'Kirstyn', 'vS5DU', true),
 (50, 'Nanine', 'Clutten', 'Follett', 'jfollett1d@clickbank.net', 'mS1u4LAuM', 'gP9EQDp3YY7m', 'Jake', 'iI32x+X', true);