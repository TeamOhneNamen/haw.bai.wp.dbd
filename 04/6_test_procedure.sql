select TeilID, Bestand From Teile;
SELECT TeilID, Stueckzahl FROM Bestellpositionen WHERE BestellungsID=1;

exec LieferungStueckzahlErhoehen(1);
    
select TeilID, Bestand From Teile;