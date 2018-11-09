drop table Fakten CASCADE CONSTRAINTS;

CREATE TABLE Fakten(
	LieferantID NUMBER(10),
	TeilID NUMBER(10),
	Klassifikation VARCHAR(1),
	Jahr NUMBER(4),
	Monat NUMBER(2),
	Tag NUMBER(1),
FOREIGN KEY(LieferantID) REFERENCES Lieferanten,
FOREIGN KEY(TeilID) REFERENCES Teile);

CREATE OR REPLACE TRIGGER DWH
AFTER INSERT OR UPDATE ON Geliefert
declare 
jahr    number(4);
monat   number(2);
tag     number(2);
klasse 	VARCHAR(1);
begin
	SELECT Klassifikation INTO Klasse from Teile WHERE TeilID = :new.TeilID;
    extract(year from :new.Lieferdatum) into jahr;
    extract(month from :new.Lieferdatum) into monat;
    extract(day from :new.Lieferdatum) into tag;
    Insert into Fakten values(:new.LieferantID, :new.TeilID, jahr, monat, tag);
end;
	