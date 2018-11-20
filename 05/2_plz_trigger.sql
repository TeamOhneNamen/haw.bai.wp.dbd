DROP Sequence GESCHAEFT_ID;

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

Create Sequence GESCHAEFT_ID;


create or replace Procedure InsertKunden(Vorname in VARCHAR, Names in VARCHAR, PLZ in NUMBER, ORT in VARCHAR, Strasse in VARCHAR, IBAN in NUMBER, TelefonNummern in TelefonnummernVarray) AS
GID number;
Begin
    SELECT GESCHAEFT_ID.NEXTVAL INTO GID FROM DUAL; 
    INSERT INTO Geschaeftspartner VALUES (GID, Names, PLZ, ORT, Strasse, TelefonNummern); 
    INSERT INTO Kunden VALUES (GID, Vorname, IBAN);
End;
/

create or replace Procedure InsertLieferant(Names in VARCHAR,PLZ in NUMBER,ORT in VARCHAR,Strasse in VARCHAR, TelefonNummern in TelefonnummernVarray) AS
GID number;
Begin
    SELECT GESCHAEFT_ID.NEXTVAL INTO GID FROM DUAL; 
    INSERT INTO Geschaeftspartner VALUES (GID, Names, PLZ, ORT, Strasse, TelefonNummern); 
    INSERT INTO Lieferanten VALUES (GID); 
End;
/
