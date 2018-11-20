CREATE OR REPLACE VIEW KundenView AS
    (
    SELECT Geschaeftspartner.GeschaeftspartnerID, Name, PLZ, Ort, Strasse, Vorname, IBAN 
    FROM Geschaeftspartner, Kunden
    WHERE Kunden.GeschaeftspartnerID = Geschaeftspartner.GeschaeftspartnerID
    );
    
CREATE OR REPLACE VIEW LieferantenView AS
    (
    SELECT GeschaeftspartnerID, Name, PLZ, Ort, Strasse 
    FROM Geschaeftspartner
    );
    
CREATE OR REPLACE VIEW LieferantenLieferwertView AS
    (
    SELECT SUM(Gesamtsumme) AS GesamtLieferwert
    FROM Lieferungen, Lieferanten 
    --WHERE Lieferungen.LieferantenID = Lieferanten.GeschaeftspartnerID
    GROUP BY Lieferanten.GeschaeftspartnerID
    );