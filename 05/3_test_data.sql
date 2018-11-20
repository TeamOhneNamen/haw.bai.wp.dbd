exec InsertKunden('Ana', 'Müller', 18516, 'Süderholz', 'Steinstraße 3', 1234567890, TelefonnummernVarray('110'));
exec InsertKunden('Christopher', 'Jäger', 22041, 'Hamburg', 'Dernauerstraße 12', 1234567890, TelefonnummernVarray('040110'));
exec InsertKunden('Kristin', 'Schreier', 18276, 'Kuhs','Stephansplatz 14', 1234567890, TelefonnummernVarray('04013220'));

INSERT INTO Bestellungen VALUES (1, 1, 30.00, '05.01.2018');
INSERT INTO Bestellungen VALUES (2, 2, 50.00, '04.03.2018');
INSERT INTO Bestellungen VALUES (3, 3, 70.00, '12.04.2018');
INSERT INTO Bestellungen VALUES (4, 2, 20.00, '16.08.2018');
INSERT INTO Bestellungen VALUES (5, 3, 40.00, '23.09.2018');

exec InsertLieferant('GartenBauAG', 17498, 'Dersekow', 'Holzweg 32', TelefonnummernVarray('040'));
exec InsertLieferant('SauberBauAG',  19258, 'Schwanheide', 'Steinzweg 42', TelefonnummernVarray('030110'));
exec InsertLieferant('TerassenBauAG', 19249, 'Gößlow', 'Plankenweg 32', TelefonnummernVarray('04115740'));
exec InsertLieferant('DreckigBauAG', 18573, 'Rambin', 'Dielenweg 32', TelefonnummernVarray('04010980248975'));
exec InsertLieferant('KleinerBauAG', 24395, 'Gelting', 'Lattenweg 42', TelefonnummernVarray('0111110398'));
exec InsertLieferant('MaurerBauAG', 17506, 'Lüssow', 'Balkenweg 32', TelefonnummernVarray('1040110'));
exec InsertLieferant('GartenBauAG', 92286, 'Rieden', 'Hochweg 3', TelefonnummernVarray('978365978345'));
exec InsertLieferant('SauberBauAG', 60437, 'Frankfurt am Main', 'Stabelweg 32', TelefonnummernVarray());
exec InsertLieferant('TerassenBauAG', 57614, 'Niederwambach', 'Rekursionsweg 27', TelefonnummernVarray('040110', '01763982764892735'));
exec InsertLieferant('DreckigBauAG', 66996, 'Schindhard', 'Hamweg 5', TelefonnummernVarray('1104011', '040'));
exec InsertLieferant('KleinerBauAG', 82205, 'Gilching', 'Heuweg 26', TelefonnummernVarray('LOL'));
exec InsertLieferant('MaurerBauAG', 82216, 'Maisach', 'Suchweg 34', TelefonnummernVarray('041934578081'));


INSERT INTO Teile VALUES (1, 1+3, 'A', 'Schraube', 10, 'LagerregaL 10', 10.00);
INSERT INTO Teile VALUES (2, 2+3, 'A', 'Mutter', 10, 'LagerregaL 11', 20.00);
INSERT INTO Teile VALUES (3, 3+3, 'B', 'Vater', 10, 'LagerregaL 12', 60.00);
INSERT INTO Teile VALUES (4, 1+3, 'C', 'Winkel', 10, 'LagerregaL 13', 90.00);
INSERT INTO Teile VALUES (5, 6+3, 'A', 'Mutterschraube', 10, 'LagerregaL 50', 17.00);
INSERT INTO Teile VALUES (6, 3+3, 'A', 'Mutterwinkel', 10, 'LagerregaL 71', 22.00);
INSERT INTO Teile VALUES (7, 4+3, 'B', 'VaterSchraube', 10, 'LagerregaL 22', 36.00);
INSERT INTO Teile VALUES (8, 5+3, 'C', 'Winkelzieher', 10, 'LagerregaL 73', 99.00);

INSERT INTO Bestellpositionen VALUES (1, 1, 1, 3, 30.00);
INSERT INTO Bestellpositionen VALUES (2, 2, 2, 5, 50.00);
INSERT INTO Bestellpositionen VALUES (3, 3, 1, 1, 60.00);
INSERT INTO Bestellpositionen VALUES (4, 3, 4, 1, 10.00);
INSERT INTO Bestellpositionen VALUES (5, 2, 5, 1, 20.00);
INSERT INTO Bestellpositionen VALUES (6, 3, 1, 2, 40.00);

INSERT INTO Lieferungen VALUES (1, 1+3, 1000.00);
INSERT INTO Lieferungen VALUES (2, 2+3, 600.00);
INSERT INTO Lieferungen VALUES (3, 4+3, 1000.00);
INSERT INTO Lieferungen VALUES (4, 4+3, 1000.00);
INSERT INTO Lieferungen VALUES (5, 4+3, 600.00);
INSERT INTO Lieferungen VALUES (6, 4+3, 1000.00);

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

INSERT INTO Bietet_An VALUES (1+3, 1, 20.00);
INSERT INTO Bietet_An VALUES (2+3, 1, 10.00);
INSERT INTO Bietet_An VALUES (3+3, 1, 70.00);
INSERT INTO Bietet_An VALUES (4+3, 1, 90.00);
INSERT INTO Bietet_An VALUES (3+3, 4, 5.00);
INSERT INTO Bietet_An VALUES (4+3, 4, 90.00);

INSERT INTO Geliefert VALUES (1, 1, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 2, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 3, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 4, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 5, 10.00, '12.11.2018');
INSERT INTO Geliefert VALUES (1, 6, 10.00, '12.11.2018');

INSERT INTO Geliefert VALUES (3, 1, 30.00, '12.11.2018');
INSERT INTO Geliefert VALUES (4, 1, 40.00, '12.11.2018');
INSERT INTO Geliefert VALUES (2, 1, 20.00, '12.11.2013');