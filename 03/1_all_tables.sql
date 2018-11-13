drop table Lieferanten CASCADE CONSTRAINTS;

create table Lieferanten
(LieferantenID number(10),
Adresse			varchar(30) NOT NULL,
PLZ 			varchar(5) NOT NULL,
Ort 			varchar(20) NOT NULL,
Firmenname			varchar(30) NOT NULL,
primary key (LieferantenID))
PARTITION BY RANGE (PLZ)
 ( PARTITION USERS2 VALUES LESS THAN ('50000'), 
	PARTITION USERS3 VALUES LESS THAN ('99999')
 );