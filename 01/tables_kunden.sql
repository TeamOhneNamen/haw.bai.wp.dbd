CREATE TABLE Kunden
(
KundenID NUMBER(5),
Vorname VARCHAR(20),
Nachname VARCHAR(20),
IBAN NUMBER(10),
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
Stückzahl NUMBER(20),
Bestellpositionspreis NUMBER(9,2),
PRIMARY KEY(BestellpositionsID),
FOREIGN KEY(BestellungsID) REFERENCES Bestellungen 
);


INSERT INTO Kunden VALUES (1, 'Ana', 'Müller', '1234567890', 'Steinstraße 3');
INSERT INTO Kunden VALUES (2, 'Christopher', 'Jäger', '1234567891','Dernauerstraße 12');
INSERT INTO Kunden VALUES (3, 'Kristin', 'Schreier', '1234567892','Stephansplatz 14');

INSERT INTO Bestellungen VALUES (1, 1, 30.00, '05.01.2018');
INSERT INTO Bestellungen VALUES (2, 2, 50.00, '04.03.2018');
INSERT INTO Bestellungen VALUES (3, 3, 70.00, '12.04.2018');
INSERT INTO Bestellungen VALUES (4, 2, 20.00, '16.08.2018');
INSERT INTO Bestellungen VALUES (5, 3, 40.00, '23.09.2018');

INSERT INTO Bestellpositionen VALUES (1, 1, 3, 30.00);
INSERT INTO Bestellpositionen VALUES (2, 2, 5, 50.00);
INSERT INTO Bestellpositionen VALUES (3, 3, 1, 60.00);
INSERT INTO Bestellpositionen VALUES (4, 3, 1, 10.00);
INSERT INTO Bestellpositionen VALUES (5, 2, 1, 20.00);
INSERT INTO Bestellpositionen VALUES (6, 3, 2, 40.00);
