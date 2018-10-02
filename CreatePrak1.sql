drop table Lieferanten CASCADE CONSTRAINTS;
drop table Lieferungen CASCADE CONSTRAINTS;
drop table Lieferpositionen CASCADE CONSTRAINTS;
drop table Teile CASCADE CONSTRAINTS;
drop table Bietet_An CASCADE CONSTRAINTS;



create table Lieferanten
(LieferantenID	number(10), 
Adresse			varchar(30), 
Firmenname			varchar(30),
primary key (LieferantenID));


create table Lieferungen
(LieferungsID		number(10),
Lieferdatum         date,
Gesamtsumme			number(9,2),
primary key (LieferungsID));


create table Lieferpositionen
(LieferpositionsID		number(10),
LieferungsID			number(10),
Stueckzahl				number(10),
Lieferpositionspreis	number(9,2),
primary key (LieferpositionsID),
foreign key (LieferungsID) references Lieferungen);


create table Teile
(TeilID         number(10),
LieferantenID	number(10),
Klassifikation	varchar(1),
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


INSERT INTO Lieferanten VALUES (1, 'Holzweg 32', 'GartenBauAG');
INSERT INTO Lieferanten VALUES (2, 'Steinzweg 42', 'SauberBauAG');
INSERT INTO Lieferanten VALUES (3, 'Plantenweg 32', 'TerassenBauAG');

INSERT INTO Teile VALUES (1, 1, 'A', 'Schraube', 10, 'LagerregaL 10', 10.00);
INSERT INTO Teile VALUES (2, 2, 'A', 'Mutter', 10, 'LagerregaL 11', 20.00);
INSERT INTO Teile VALUES (3, 3, 'B', 'Vater', 10, 'LagerregaL 12', 60.00);
INSERT INTO Teile VALUES (4, 1, 'C', 'Winkel', 10, 'LagerregaL 13', 90.00);

INSERT INTO Lieferungen VALUES (1, '01.01.1970', 70.00);
INSERT INTO Lieferungen VALUES (2, '03.01.1970', 140.00);
INSERT INTO Lieferungen VALUES (3, '04.01.1970', 170.00);

INSERT INTO Lieferpositionen VALUES (1, 1, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (2, 1, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (3, 1, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (4, 1, 10, 20.00);
INSERT INTO Lieferpositionen VALUES (5, 2, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (6, 2, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (7, 2, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (8, 3, 10, 30.00);
INSERT INTO Lieferpositionen VALUES (9, 3, 10, 60.00);
INSERT INTO Lieferpositionen VALUES (10, 3, 10, 90.00);
INSERT INTO Lieferpositionen VALUES (11, 3, 10, 20.00);

INSERT INTO Bietet_An VALUES (1, 1, 20.00);
INSERT INTO Bietet_An VALUES (2, 1, 10.00);

Select * From BIETET_AN Where TEILID=1 || min(PREIS);

SELECT * FROM Lieferpositionen;
SELECT * FROM Lieferungen;
SELECT * FROM Teile;
SELECT * FROM Lieferanten;
SELECT * FROM Bietet_An; 