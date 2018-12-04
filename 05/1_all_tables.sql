drop table Lieferanten CASCADE CONSTRAINTS;
drop table Lieferungen CASCADE CONSTRAINTS;
drop table Lieferpositionen CASCADE CONSTRAINTS;
drop table Teile CASCADE CONSTRAINTS;
drop table Bietet_An CASCADE CONSTRAINTS;
drop table Geliefert CASCADE CONSTRAINTS;
drop table Kunden CASCADE CONSTRAINTS;
drop table Bestellungen CASCADE CONSTRAINTS;
drop table Bestellpositionen CASCADE CONSTRAINTS;
drop table Geschaeftspartner CASCADE CONSTRAINTS;
drop table Filiale CASCADE CONSTRAINTS;

Drop Type TelefonnummernVarray Force;
CREATE TYPE TelefonnummernVarray IS VARRAY(3) OF VARCHAR(20)
/

CREATE TABLE Geschaeftspartner
(
GeschaeftspartnerID NUMBER(10),
Name VARCHAR(20),
Telefonnummern TelefonnummernVarray,
ORT SDO_GEOMETRY,
PRIMARY KEY(GeschaeftspartnerID)
);

CREATE TABLE Filiale
(
FilialID NUMBER(10),
Name VARCHAR(20),
ORT SDO_GEOMETRY,
PRIMARY KEY(FilialID)
);

CREATE INDEX IDX_GESCHAEFTSPARTNER ON GESCHAEFTSPARTNER(ORT) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX IDX_FILIALE ON FILIALE(ORT) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME = 'GESCHAEFTSPARTNER';
COMMIT;

DELETE FROM USER_SDO_GEOM_METADATA WHERE TABLE_NAME = 'FILIALE';
COMMIT;

INSERT INTO USER_SDO_GEOM_METADATA VALUES ('GESCHAEFTSPARTNER', 'ORT', 
   SDO_DIM_ARRAY 
     (SDO_DIM_ELEMENT('LONG', -180.0, 180.0, 0.5), 
     SDO_DIM_ELEMENT('LAT', -90.0, 90.0, 0.5)), 
   4055 );
   
INSERT INTO USER_SDO_GEOM_METADATA VALUES ('FILIALE', 'ORT', 
   SDO_DIM_ARRAY 
     (SDO_DIM_ELEMENT('LONG', -180.0, 180.0, 0.5), 
     SDO_DIM_ELEMENT('LAT', -90.0, 90.0, 0.5)), 
   4055 );

create table Lieferanten
(
--LieferantenID number(10),
GeschaeftspartnerID number(10),
--primary key (LieferantenID),
primary key (GeschaeftspartnerID),
foreign key (GeschaeftspartnerID) references Geschaeftspartner
);


create table Lieferungen
(LieferungsID		number(10),
LieferantenID		number(10),
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
(LieferungsID	number(10),
TeilID			number(10),
Preis           number(9,2) NOT NULL,
Lieferdatum     date,
PRIMARY KEY(LieferungsID,TeilID),
foreign key (LieferungsID) references Lieferungen,
foreign key (TeilID) references Teile);

CREATE TABLE Kunden
(
GeschaeftspartnerID number(10),
Vorname VARCHAR(20),
IBAN NUMBER(10),
primary key (GeschaeftspartnerID),
foreign key (GeschaeftspartnerID) references Geschaeftspartner
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
