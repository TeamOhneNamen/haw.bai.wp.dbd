drop table Fakten CASCADE CONSTRAINTS;

CREATE TABLE Fakten(
	LieferantenID NUMBER(10),
	TeilID NUMBER(10),
	Klassifikation VARCHAR(1),
	Jahr NUMBER(4),
	Monat NUMBER(2),
	Tag NUMBER(2),
FOREIGN KEY(LieferantenID) REFERENCES Lieferanten,
FOREIGN KEY(TeilID) REFERENCES Teile);

CREATE OR REPLACE TRIGGER DWH
AFTER INSERT OR UPDATE ON Geliefert
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
declare 
jahr    number(4);
monat   number(2);
tag     number(2);
klasse 	VARCHAR(1);
begin
	SELECT Klassifikation INTO Klasse from Teile WHERE TeilID = :new.TeilID;
    jahr := extract(year from :new.Lieferdatum);
    monat := extract(month from :new.Lieferdatum);
    tag := extract(day from :new.Lieferdatum);
    Insert into Fakten 
    values(:new.LieferantenID, :new.TeilID, Klasse, jahr, monat, tag);
end;
	