CREATE OR REPLACE VIEW KundenView AS
    (
    SELECT Geschaeftspartner.GeschaeftspartnerID, Name, PLZ, Ort, Strasse, Vorname, IBAN, TelefonNummern 
    FROM Geschaeftspartner, Kunden
    WHERE Kunden.GeschaeftspartnerID = Geschaeftspartner.GeschaeftspartnerID
    );
    
CREATE OR REPLACE VIEW LieferantenView AS
    (
    SELECT Lieferanten.GeschaeftspartnerID, Name, PLZ, Ort, Strasse, TelefonNummern
    FROM Geschaeftspartner, Lieferanten
    WHERE Lieferanten.GeschaeftspartnerID = Geschaeftspartner.GeschaeftspartnerID
    );
    
CREATE OR REPLACE VIEW LieferantenLieferwertView AS
    (
    SELECT lieferanten.geschaeftspartnerid , NVL(SUM(Gesamtsumme), 0)  AS GesamtLieferWert
    FROM Lieferungen
    RIGHT JOIN Lieferanten
       ON Lieferungen.LieferantenID = Lieferanten.GeschaeftspartnerID
    GROUP BY Lieferanten.geschaeftspartnerid
    );
/

SELECT * FROM KundenView;
SELECT * FROM LieferantenView;
SELECT * FROM LieferantenLieferwertView;
SELECT LieferantenView.GeschaeftspartnerID AS ID, COLUMN_VALUE AS Telefonnummer FROM LieferantenView, TABLE(LieferantenView.TelefonNummern) WHERE LieferantenView.GeschaeftspartnerID=12;
SELECT * FROM LieferantenView WHERE EXISTS (SELECT * FROM TABLE(LieferantenView.TelefonNummern) WHERE COLUMN_VALUE LIKE '040%');

SELECT g.name as Geschaeftspartner, f.name as Filiale FROM filiale f, geschaeftspartner g WHERE 
   SDO_NN(f.ort, g.ort, 'sdo_num_res=1') = 'TRUE'; 
   
GRANT SELECT ON Geschaeftspartner TO ACF200;