DROP Sequence GESCHAEFT_ID;

Create Sequence GESCHAEFT_ID;

create or replace Procedure InsertKunden(Vorname in VARCHAR, Names in VARCHAR, IBAN in NUMBER, TelefonNummern in TelefonnummernVarray, OrtVon in SDO_GEOMETRY) AS
GID number;
Begin
    SELECT GESCHAEFT_ID.NEXTVAL INTO GID FROM DUAL; 
    INSERT INTO Geschaeftspartner VALUES (GID, Names, TelefonNummern, Null); 
    Update Geschaeftspartner set Geschaeftspartner.ORT=OrtVon Where GESCHAEFTSPARTNERID=GID;
    INSERT INTO Kunden VALUES (GID, Vorname, IBAN);
End;
/

create or replace Procedure InsertLieferant(Names in VARCHAR, TelefonNummern in TelefonnummernVarray, OrtVon in SDO_GEOMETRY) AS
GID number;
Begin
    SELECT GESCHAEFT_ID.NEXTVAL INTO GID FROM DUAL; 
    INSERT INTO Geschaeftspartner VALUES (GID, Names, TelefonNummern, Null);
    Update Geschaeftspartner set Geschaeftspartner.ORT=OrtVon Where GESCHAEFTSPARTNERID=GID;
    INSERT INTO Lieferanten VALUES (GID); 
End;
/
