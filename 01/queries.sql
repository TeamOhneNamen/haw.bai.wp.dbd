-- Welche Kunden wurden mit Teilen beliefert, die ein bestimmter Lieferant geliefert hat?
Select * From BIETET_AN Where preis =  ( SELECT MIN(preis) FROM BIETET_AN Where TeilID in (SELECT TeilID from Teile WHERE Klassifikation='A'));

-- Wie hoch ist die gesamte bestellte Anzahl pro Lieferant und Teil im Jahr 2018?
Select Lieferanten.LieferantenID, Lieferpositionen.TeilID, sum(Lieferpositionen.Stueckzahl) AS Summe
From Lieferpositionen,Lieferungen,Lieferanten
Where Lieferpositionen.LieferungsID = Lieferungen.LieferungsID AND Lieferungen.LieferantenID = Lieferanten.LieferantenID AND extract(YEAR from lieferdatum) = 2018
GROUP BY(Lieferanten.LieferantenID), Lieferpositionen.TeilID ORDER BY Lieferanten.LieferantenID, Lieferpositionen.TeilID;

--  Bei wem wurde in diesem Jahr nichts bestellt?
select lieferantenid from lieferanten where lieferantenid not in (select lieferantenid From geliefert where extract(YEAR from lieferdatum) = 2018);