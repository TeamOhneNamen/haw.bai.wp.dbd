CREATE OR REPLACE TRIGGER plz_check
BEFORE INSERT OR UPDATE ON Geschaeftspartner 
FOR EACH ROW
DECLARE
    results number(2) := 0;
BEGIN
    SELECT COUNT(*) INTO results FROM GERKEN.plzverzeichnis WHERE plz = :new.plz AND ort = :new.ort;
    IF results = 0
	THEN
		RAISE_APPLICATION_ERROR( -20001, 'PLZ und Ort passen nicht zusammen' );
	END IF;
END;
/

DROP Sequence GESCHAEFT_ID;
Create Sequence GESCHAEFT_ID;

drop Procedure InsertLieferant;
drop Procedure InsertKunden;

create or replace Procedure InsertKunden(Name in VARCHAR,PLZ in NUMBER,ORT in VARCHAR, Strasse in VARCHAR, Vorname in VARCHAR,IBAN in NUMBER) AS
    GeschaeftspartnerID NUMBER;
Begin
    GeschaeftspartnerID := GESCHAEFT_ID.NEXTVAL;
    INSERT INTO Geschaeftspartner VALUES (GeschaeftspartnerID, Name, PLZ, ORT, Strasse); 
    INSERT INTO Kunden VALUES (GeschaeftspartnerID, Vorname, IBAN);
    
    
End;
/

create or replace Procedure InsertLieferant(Names in VARCHAR,PLZ in NUMBER,ORT in VARCHAR,Strasse in VARCHAR) AS
    GeschaeftspartnerID NUMBER;
Begin
    INSERT INTO Geschaeftspartner VALUES (GESCHAEFT_ID.NEXTVAL, Names, PLZ, ORT, Strasse); 
    INSERT INTO Lieferanten VALUES (GeschaeftspartnerID);
    
    
End;