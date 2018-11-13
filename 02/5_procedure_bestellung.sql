drop Procedure LieferungStueckzahlErhoehen;

create or replace Procedure LieferungStueckzahlErhoehen(lieferungsid_ in number) as

Begin
    
    FOR Lieferungen IN (SELECT TeilID, Stueckzahl FROM lieferpositionen WHERE lieferungsid=lieferungsid_) LOOP
        UPDATE Teile SET bestand = bestand + Lieferungen.Stueckzahl WHERE teile.teilid = Lieferungen.teilid;
    END LOOP;
    
    
End;