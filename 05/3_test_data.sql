exec InsertKunden('Ana', 'Müller', 1234567890, TelefonnummernVarray('110'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.58163,9.988361,NULL),NULL,NULL));
exec InsertKunden('Christopher', 'Jäger', 1234567890, TelefonnummernVarray('040110'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.556158,10.022125,NULL),NULL,NULL));
exec InsertKunden('Kristin', 'Schreier', 1234567890, TelefonnummernVarray('04013220'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.58163,9.988361,NULL),NULL,NULL));

INSERT INTO Bestellungen VALUES (1, 1, 30.00, '05.01.2018');
INSERT INTO Bestellungen VALUES (2, 2, 50.00, '04.03.2018');
INSERT INTO Bestellungen VALUES (3, 3, 70.00, '12.04.2018');
INSERT INTO Bestellungen VALUES (4, 2, 20.00, '16.08.2018');
INSERT INTO Bestellungen VALUES (5, 3, 40.00, '23.09.2018');

select * from GESCHAEFTSPARTNER;

exec InsertLieferant('GartenBauAG', TelefonnummernVarray('040'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.58163,9.988361,NULL),NULL,NULL));
exec InsertLieferant('SauberBauAG', TelefonnummernVarray('030110'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.58163,9.988361,NULL),NULL,NULL));
exec InsertLieferant('TerassenBauAG', TelefonnummernVarray('04115740'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.58163,9.988361,NULL),NULL,NULL));
exec InsertLieferant('DreckigBauAG', TelefonnummernVarray('04010980248975'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.553831,10.083741,NULL),NULL,NULL));
exec InsertLieferant('KleinerBauAG', TelefonnummernVarray('0111110398'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.552262,9.934844,NULL),NULL,NULL));
exec InsertLieferant('MaurerBauAG', TelefonnummernVarray('1040110'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.58163,9.988361,NULL),NULL,NULL));
exec InsertLieferant('GartenBauAG', TelefonnummernVarray('978365978345'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.556158,10.022125,NULL),NULL,NULL));
exec InsertLieferant('SauberBauAG', TelefonnummernVarray() ,MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.58163,9.988361,NULL),NULL,NULL));
exec InsertLieferant('TerassenBauAG', TelefonnummernVarray('040110', '01763982764892735'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.552262,9.934844,NULL),NULL,NULL));
exec InsertLieferant('DreckigBauAG', TelefonnummernVarray('1104011', '040'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.556158,10.022125,NULL),NULL,NULL));
exec InsertLieferant('KleinerBauAG', TelefonnummernVarray('LOL'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.550383,9.992385,NULL),NULL,NULL));
exec InsertLieferant('MaurerBauAG', TelefonnummernVarray('041934578081'), MDSYS.SDO_GEOMETRY(2001,4055 ,MDSYS.SDO_POINT_TYPE(53.553831,10.083741,NULL),NULL,NULL));


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