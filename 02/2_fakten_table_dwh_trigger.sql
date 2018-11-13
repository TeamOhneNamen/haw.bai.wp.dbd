drop table fakten_liefermenge CASCADE CONSTRAINTS;
drop table fakten_datum CASCADE CONSTRAINTS;



CREATE TABLE fakten_datum(
	Datum date,
	Jahr NUMBER(4),
	Monat NUMBER(2),
	Tag NUMBER(2),
    PRIMARY KEY(Datum)
);


CREATE TABLE fakten_liefermenge(
	LieferantenID NUMBER(10),
	TeilID NUMBER(10),
    Datum DATE,
    Liefermenge NUMBER(10),
    Einkaufspreis NUMBER(9,2),
PRIMARY KEY(LieferantenID,TeilID,Datum),
FOREIGN KEY(Datum) REFERENCES FAKTEN_DATUM,
FOREIGN KEY(LieferantenID) REFERENCES Lieferanten,
FOREIGN KEY(TeilID) REFERENCES Teile);

CREATE OR REPLACE TRIGGER fakten_liefermenge_trigger
AFTER INSERT OR UPDATE ON Geliefert
REFERENCING NEW AS NEW OLD AS OLD

FOR EACH ROW
declare 
Lieferant       number(10);
Liefermenge     number(10);
Einkaufspreis     number(9,2);
jahr    number(4);
monat   number(2);
monatstag     number(2);
begin
    IF (SELECT COUNT(*) FROM fakten_datum WHERE fakten_datum.datum = :new.Lieferdatum)=0
    THEN
        jahr := extract(year from :new.Lieferdatum);
        monat := extract(month from :new.Lieferdatum);
        monatstag := extract(day from :new.Lieferdatum);
        Insert into fakten_datum values(:new.Lieferdatum, jahr, monat, monatstag);
    END IF;
    SELECT LieferantenID INTO Lieferant FROM Lieferungen WHERE Lieferungen.lieferungsid = :new.lieferungsid;
    SELECT Preis INTO Einkaufspreis FROM Teile WHERE teile.teilid = :new.teilid;
    SELECT SUM(Stueckzahl) INTO Liefermenge FROM Lieferpositionen WHERE Lieferpositionen.teilid = :new.teilid;
    Insert into fakten_liefermenge values(lieferant, :new.TeilID, :new.Lieferdatum, Liefermenge, Einkaufspreis);
end;
/

	