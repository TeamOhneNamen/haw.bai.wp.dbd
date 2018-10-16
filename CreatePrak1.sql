drop table Lieferanten CASCADE CONSTRAINTS;
drop table Lieferungen CASCADE CONSTRAINTS;
drop table Lieferpositionen CASCADE CONSTRAINTS;
drop table Teile CASCADE CONSTRAINTS;
drop table Bietet_An CASCADE CONSTRAINTS;
drop table Geliefert CASCADE CONSTRAINTS;


create table Lieferanten
(LieferantenID number(19),
Adresse			varchar(30) IS NOT NULL, 
Firmenname			varchar(30) IS NOT NULL,
primary key (LieferantenID));


create table Lieferungen
(LieferungsID		number(10),
LieferantenID		number(19),
Lieferdatum         date,
Gesamtsumme			number(9,2),
primary key (LieferungsID),
foreign key (LieferantenID) references Lieferanten);

create table Lieferpositionen
TeilID                  number(10),
LieferungsID			number(10),
Stueckzahl				number(10) IS NOT NULL,
Lieferpositionspreis	number(9,2),
primary key (LieferungsID, TeilID),
foreign key (LieferungsID) references Lieferungen);

create table Teile
(TeilID         number(10),
LieferantenID	number(10),
Klassifikation	varchar(1), // check klausel 'A', 'B', 'C'
Name			varchar(20),
Bestand			number(10),
Lagerort		varchar(20),
Preis			number(9,2),
primary key (TeilID),
foreign key (LieferantenID) references Lieferanten);

create table Bietet_An
(LieferantenID	number(10),
TeilID			number(10),
Preis           number(9,2),
foreign key (LieferantenID) references Lieferanten,
foreign key (TeilID) references Teile);

create table Geliefert
(LieferantenID	number(10),
TeilID			number(10),
Preis           number(9,2),
Lieferdatum     date,
foreign key (LieferantenID) references Lieferanten,
foreign key (TeilID) references Teile);


INSERT INTO Lieferanten VALUES (1, 'Holzweg 32', 'GartenBauAG');
INSERT INTO Lieferanten VALUES (2, 'Steinzweg 42', 'SauberBauAG');
INSERT INTO Lieferanten VALUES (3, 'Plankenweg 32', 'TerassenBauAG');
INSERT INTO Lieferanten VALUES (4, 'Dielenweg 32', 'DreckigBauAG');
INSERT INTO Lieferanten VALUES (5, 'Lattenweg 42', 'KleinerBauAG');
INSERT INTO Lieferanten VALUES (6, 'Balkenweg 32', 'MaurerBauAG');

INSERT INTO Teile VALUES (1, 1, 'A', 'Schraube', 10, 'LagerregaL 10', 10.00);
INSERT INTO Teile VALUES (2, 2, 'A', 'Mutter', 10, 'LagerregaL 11', 20.00);
INSERT INTO Teile VALUES (3, 3, 'B', 'Vater', 10, 'LagerregaL 12', 60.00);
INSERT INTO Teile VALUES (4, 1, 'C', 'Winkel', 10, 'LagerregaL 13', 90.00);
INSERT INTO Teile VALUES (5, 6, 'A', 'Mutterschraube', 10, 'LagerregaL 50', 17.00);
INSERT INTO Teile VALUES (6, 3, 'A', 'Mutterwinkel', 10, 'LagerregaL 71', 22.00);
INSERT INTO Teile VALUES (7, 4, 'B', 'VaterSchraube', 10, 'LagerregaL 22', 36.00);
INSERT INTO Teile VALUES (8, 5, 'C', 'Winkelzieher', 10, 'LagerregaL 73', 99.00);

INSERT INTO Lieferungen VALUES (1, 1, '12.11.2013', 70.00);
INSERT INTO Lieferungen VALUES (2, 2, '03.01.2014', 140.00);
INSERT INTO Lieferungen VALUES (3, 4, '04.01.2019', 170.00);
INSERT INTO Lieferungen VALUES (4, 4, '12.11.2019', 170.00);
INSERT INTO Lieferungen VALUES (5, 4, '03.01.2018', 40.00);
INSERT INTO Lieferungen VALUES (6, 4, '04.01.2017', 270.00);

INSERT INTO Lieferpositionen VALUES (1, 1, 1, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (2, 2, 1, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (3, 3, 1, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (4, 4, 1, 10, 20.00);
INSERT INTO Lieferpositionen VALUES (5, 1, 2, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (6, 2, 2, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (7, 3, 2, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (8, 1, 3, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (9, 2, 3, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (10, 3, 3, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (11, 4, 3, 10, 20.00);
INSERT INTO Lieferpositionen VALUES (12, 1, 4, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (13, 2, 4, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (14, 3, 4, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (15, 4, 4, 10, 20.00);
INSERT INTO Lieferpositionen VALUES (16, 1, 5, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (17, 2, 5, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (18, 3, 5, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (19, 1, 6, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (20, 2, 6, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (21, 3, 6, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (22, 4, 6, 10, 20.00);

INSERT INTO Bietet_An VALUES (1, 1, 20.00);
INSERT INTO Bietet_An VALUES (2, 1, 10.00);
INSERT INTO Bietet_An VALUES (3, 1, 70.00);
INSERT INTO Bietet_An VALUES (4, 1, 90.00);
INSERT INTO Bietet_An VALUES (3, 4, 5.00);
INSERT INTO Bietet_An VALUES (4, 4, 90.00);

INSERT INTO Geliefert VALUES (1, 1, 20.00, '12.11.2018');
INSERT INTO Geliefert VALUES (2, 1, 10.00, '12.11.2013');
INSERT INTO Geliefert VALUES (3, 1, 70.00, '12.11.2018');
INSERT INTO Geliefert VALUES (4, 1, 90.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 1, 20.00, '12.11.2018');
INSERT INTO Geliefert VALUES (2, 1, 10.00, '12.11.2013');
 
 

SELECT * FROM Lieferpositionen;
SELECT * FROM Lieferungen;
SELECT * FROM Teile;
SELECT * FROM Lieferanten;
SELECT * FROM Bietet_An; 
SELECT * FROM Geliefert;
 
 
 GRANT ALL PRIVILEGES ON TEILE TO ace516;
