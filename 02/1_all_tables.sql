drop table Lieferanten CASCADE CONSTRAINTS;
drop table Lieferungen CASCADE CONSTRAINTS;
drop table Lieferpositionen CASCADE CONSTRAINTS;
drop table Teile CASCADE CONSTRAINTS;
drop table Bietet_An CASCADE CONSTRAINTS;
drop table Geliefert CASCADE CONSTRAINTS;
drop table Kunden CASCADE CONSTRAINTS;
drop table Bestellungen CASCADE CONSTRAINTS;
drop table Bestellpositionen CASCADE CONSTRAINTS;

create table Lieferanten
(LieferantenID number(10),
Adresse			varchar(30) NOT NULL, 
Firmenname			varchar(30) NOT NULL,
primary key (LieferantenID));


create table Lieferungen
(LieferungsID		number(10),
LieferantenID		number(10),
Lieferdatum         date,
Gesamtsumme			number(9,2),
primary key (LieferungsID),
foreign key (LieferantenID) references Lieferanten);


create table Teile
(TeilID         number(10),
LieferantenID	number(10),
Klassifikation	varchar(1),
Name			varchar(20) NOT NULL,
Bestand			number(10) NOT NULL,
Lagerort		varchar(20),
Preis			number(9,2) NOT NULL,
CONSTRAINT Klassifikation CHECK (Klassifikation='A' OR Klassifikation='B' OR Klassifikation='C'),
primary key (TeilID),
foreign key (LieferantenID) references Lieferanten);

create table Lieferpositionen
(TeilID                  number(10),
LieferungsID			number(10),
Stueckzahl				number(10) NOT NULL,
Lieferpositionspreis	number(9,2),
primary key (TeilID, LieferungsID),
foreign key (TeilID) references Teile,
foreign key (LieferungsID) references Lieferungen);

create table Bietet_An
(LieferantenID	number(10),
TeilID			number(10),
Preis           number(9,2) NOT NULL,
foreign key (LieferantenID) references Lieferanten,
foreign key (TeilID) references Teile);

create table Geliefert
(LieferantenID	number(10),
TeilID			number(10),
Preis           number(9,2) NOT NULL,
Lieferdatum     date,
foreign key (LieferantenID) references Lieferanten,
foreign key (TeilID) references Teile);

CREATE TABLE Kunden
(
KundenID NUMBER(5),
Vorname VARCHAR(20),
Nachname VARCHAR(20),
IBAN NUMBER(10),
PLZ NUMBER(5),
ORT VARCHAR(20),
Adresse VARCHAR(20),
PRIMARY KEY(KundenID)
);

CREATE TABLE Bestellungen
(
BestellungsID NUMBER(5),
KundenID NUMBER(10),
Gesamtsumme NUMBER(9,2),
Datum DATE,
PRIMARY KEY(BestellungsID),
FOREIGN KEY(KundenID) REFERENCES Kunden 
);

CREATE TABLE Bestellpositionen
(
BestellpositionsID NUMBER(5),
BestellungsID NUMBER(10),
TeilID 		NUMBER(10),
Stueckzahl NUMBER(20),
Bestellpositionspreis NUMBER(9,2),
PRIMARY KEY(BestellpositionsID),
FOREIGN KEY(BestellungsID) REFERENCES Bestellungen,
FOREIGN KEY(TeilID) REFERENCES Teile  
);