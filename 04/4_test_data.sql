INSERT INTO Kunden VALUES (1, 'Ana', 'Müller', '1234567890', '18516', 'Süderholz', 'Steinstraße 3');
INSERT INTO Kunden VALUES (2, 'Christopher', 'Jäger', '1234567891', '22041', 'Hamburg', 'Dernauerstraße 12');
INSERT INTO Kunden VALUES (3, 'Kristin', 'Schreier', '1234567892', '15566', 'Schöneiche','Stephansplatz 14');

INSERT INTO Bestellungen VALUES (1, 1, 30.00, '05.01.2018');
INSERT INTO Bestellungen VALUES (2, 2, 50.00, '04.03.2018');
INSERT INTO Bestellungen VALUES (3, 3, 70.00, '12.04.2018');
INSERT INTO Bestellungen VALUES (4, 2, 20.00, '16.08.2018');
INSERT INTO Bestellungen VALUES (5, 3, 40.00, '23.09.2018');

INSERT INTO Lieferanten VALUES (1, 'Holzweg 32', '17498', 'Dersekow', 'GartenBauAG');
INSERT INTO Lieferanten VALUES (2, 'Steinzweg 42', '19258', 'Schwanheide', 'SauberBauAG');
INSERT INTO Lieferanten VALUES (3, 'Plankenweg 32', '19249', 'Gößlow', 'TerassenBauAG');
INSERT INTO Lieferanten VALUES (4, 'Dielenweg 32', '18573', 'Rambin', 'DreckigBauAG');
INSERT INTO Lieferanten VALUES (5, 'Lattenweg 42', '24395', 'Gelting', 'KleinerBauAG');
INSERT INTO Lieferanten VALUES (6, 'Balkenweg 32', '17506', 'Lüssow', 'MaurerBauAG');
INSERT INTO Lieferanten VALUES (7, 'Hochweg 3', '92286', 'Rieden', 'GartenBauAG');
INSERT INTO Lieferanten VALUES (8, 'Stabelweg 32', '60437', 'Frankfurt am Main', 'SauberBauAG');
INSERT INTO Lieferanten VALUES (9, 'Rekursionsweg 27', '57614', 'Niederwambach', 'TerassenBauAG');
INSERT INTO Lieferanten VALUES (10, 'Hamweg 5', '66996', 'Schindhard', 'DreckigBauAG');
INSERT INTO Lieferanten VALUES (11, 'Heuweg 26', '82205', 'Gilching', 'KleinerBauAG');
INSERT INTO Lieferanten VALUES (12, 'Suchweg 34', '82216', 'Maisach', 'MaurerBauAG');

INSERT INTO Teile VALUES (1, 1, 'A', 'Schraube', 10, 'LagerregaL 10', 10.00);
INSERT INTO Teile VALUES (2, 2, 'A', 'Mutter', 10, 'LagerregaL 11', 20.00);
INSERT INTO Teile VALUES (3, 3, 'B', 'Vater', 10, 'LagerregaL 12', 60.00);
INSERT INTO Teile VALUES (4, 1, 'C', 'Winkel', 10, 'LagerregaL 13', 90.00);
INSERT INTO Teile VALUES (5, 6, 'A', 'Mutterschraube', 10, 'LagerregaL 50', 17.00);
INSERT INTO Teile VALUES (6, 3, 'A', 'Mutterwinkel', 10, 'LagerregaL 71', 22.00);
INSERT INTO Teile VALUES (7, 4, 'B', 'VaterSchraube', 10, 'LagerregaL 22', 36.00);
INSERT INTO Teile VALUES (8, 5, 'C', 'Winkelzieher', 10, 'LagerregaL 73', 99.00);

INSERT INTO Bestellpositionen VALUES (1, 1, 1, 3, 30.00);
INSERT INTO Bestellpositionen VALUES (2, 2, 2, 5, 50.00);
INSERT INTO Bestellpositionen VALUES (3, 3, 1, 1, 60.00);
INSERT INTO Bestellpositionen VALUES (4, 3, 4, 1, 10.00);
INSERT INTO Bestellpositionen VALUES (5, 2, 5, 1, 20.00);
INSERT INTO Bestellpositionen VALUES (6, 3, 1, 2, 40.00);

INSERT INTO Lieferungen VALUES (1, 1, 1000.00);
INSERT INTO Lieferungen VALUES (2, 2, 600.00);
INSERT INTO Lieferungen VALUES (3, 4, 1000.00);
INSERT INTO Lieferungen VALUES (4, 4, 1000.00);
INSERT INTO Lieferungen VALUES (5, 4, 600.00);
INSERT INTO Lieferungen VALUES (6, 4, 1000.00);

INSERT INTO Lieferpositionen VALUES (1, 1, 10, 100.00);
INSERT INTO Lieferpositionen VALUES (2, 1, 10, 200.00);
INSERT INTO Lieferpositionen VALUES (3, 1, 10, 300.00);
INSERT INTO Lieferpositionen VALUES (4, 1, 10, 400.00);
INSERT INTO Lieferpositionen VALUES (1, 2, 10, 100.00);
INSERT INTO Lieferpositionen VALUES (2, 2, 10, 200.00);
INSERT INTO Lieferpositionen VALUES (3, 2, 10, 300.00);
INSERT INTO Lieferpositionen VALUES (1, 3, 10, 100.00);
INSERT INTO Lieferpositionen VALUES (2, 3, 10, 200.00);
INSERT INTO Lieferpositionen VALUES (3, 3, 10, 300.00);
INSERT INTO Lieferpositionen VALUES (4, 3, 10, 400.00);
INSERT INTO Lieferpositionen VALUES (1, 4, 10, 100.00);
INSERT INTO Lieferpositionen VALUES (2, 4, 10, 200.00);
INSERT INTO Lieferpositionen VALUES (3, 4, 10, 300.00);
INSERT INTO Lieferpositionen VALUES (4, 4, 10, 400.00);
INSERT INTO Lieferpositionen VALUES (1, 5, 10, 100.00);
INSERT INTO Lieferpositionen VALUES (2, 5, 10, 200.00);
INSERT INTO Lieferpositionen VALUES (3, 5, 10, 300.00);
INSERT INTO Lieferpositionen VALUES (1, 6, 10, 100.00);
INSERT INTO Lieferpositionen VALUES (2, 6, 10, 200.00);
INSERT INTO Lieferpositionen VALUES (3, 6, 10, 300.00);
INSERT INTO Lieferpositionen VALUES (4, 6, 10, 400.00);

INSERT INTO Bietet_An VALUES (1, 1, 20.00);
INSERT INTO Bietet_An VALUES (2, 1, 10.00);
INSERT INTO Bietet_An VALUES (3, 1, 70.00);
INSERT INTO Bietet_An VALUES (4, 1, 90.00);
INSERT INTO Bietet_An VALUES (3, 4, 5.00);
INSERT INTO Bietet_An VALUES (4, 4, 90.00);

INSERT INTO Geliefert VALUES (1, 1, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 2, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 3, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 4, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 5, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 6, 10.00, '12.11.2018');

INSERT INTO Geliefert VALUES (3, 1, 30.00, '12.11.2018');
INSERT INTO Geliefert VALUES (4, 1, 40.00, '12.11.2018');
INSERT INTO Geliefert VALUES (2, 1, 20.00, '12.11.2013');

-- should return error
INSERT INTO Lieferanten VALUES (500, 'Holzweg 32', '12345', 'Greifswald', 'GartenBauAG');