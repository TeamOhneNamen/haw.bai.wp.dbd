drop Procedure LieferungStueckzahlErhoehen;

create or replace Procedure LieferungStueckzahlErhoehen(parbestellungsID in number) as

Begin
    
    FOR bestellung IN (SELECT TeilID, Stueckzahl FROM Bestellpositionen WHERE BestellungsID=parbestellungsID) LOOP
        UPDATE Teile SET bestand = bestand + bestellung.Stueckzahl WHERE teile.teilid = bestellung.teilid;
    END LOOP;
    
    
End;