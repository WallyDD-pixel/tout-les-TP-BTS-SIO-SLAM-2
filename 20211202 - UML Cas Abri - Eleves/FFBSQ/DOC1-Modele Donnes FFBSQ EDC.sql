CREATE SCHEMA EDC1
GO

CREATE TABLE EDC1.LigueRegionale
(		
   code INT PRIMARY KEY,				
   nom VARCHAR(70) ,
   adresse varchar(200),
   email varchar(100)
)
;
INSERT INTO EDC1.LigueRegionale  VALUES (1,'Ligue Pays Basque','Bagneres de bigorre','lpb@gmail.com');
INSERT INTO EDC1.LigueRegionale  VALUES (2,'Ligue Ile de France','Paris','lparis@gmail.com');
INSERT INTO EDC1.LigueRegionale  VALUES (3,'Ligue Rhone','Lyon','llyon@gmail.com');

CREATE TABLE EDC1.CentreDeBowling
(
id int PRIMARY KEY,
denomination VARCHAR(200)
);

INSERT INTO EDC1.CentreDeBowling  VALUES (1,'Centre Tolbiac');
INSERT INTO EDC1.CentreDeBowling  VALUES (2,'Paris Montparnasse');
INSERT INTO EDC1.CentreDeBowling  VALUES (3,'Butte aux Cailles');
INSERT INTO EDC1.CentreDeBowling  VALUES (4,'Lyon BowlingStar');
INSERT INTO EDC1.CentreDeBowling  VALUES (5,'Metropolis Bowling Laser Lyon');
INSERT INTO EDC1.CentreDeBowling  VALUES (6,'Bagneres Bigorres Centre Bowling');

CREATE TABLE EDC1.Club
(
id int PRIMARY KEY,
   nom VARCHAR(70) ,
   adresse varchar(200),
   email varchar(100),
   codeLigue int REFERENCES EDC1.LigueRegionale(code),
   idCentre int REFERENCES EDC1.CentreDeBowling
);

INSERT INTO EDC1.Club  VALUES (1,'Les amis de la Dalle','28 rue de Tolbiac 75013','lesamistolbiac@gmail.com',2,1);
INSERT INTO EDC1.Club  VALUES (2,'Les étudiants de paris I','32 rue de Tolbiac 75013','etu@univ-paris1.fr',2,1);
INSERT INTO EDC1.Club  VALUES (3,'Bowling ensemble à Tolbiac','48 rue de Tolbiac 75013','ensemble-tolbiac@gmail.com',2,1);
INSERT INTO EDC1.Club  VALUES (4,'Montparnasse Bowling','Place alleret','alleret-bowling@gmail.com',2,2);
INSERT INTO EDC1.Club  VALUES (5,'MGEN Bowling','Place Montparnasse','mgen-bowling@gmail.com',2,2);
INSERT INTO EDC1.Club  VALUES (6,'SNCF Bowling','Place Montparnasse','sncf-bowling@gmail.com',2,2);
INSERT INTO EDC1.Club  VALUES (7,'Club Bagneres Bigorre bowling','277 route de la Barthe','bigorre-bowling@gmail.com',1,6);
INSERT INTO EDC1.Club  VALUES (8,'Les Stars - Lyon BowlingStar','60 rue Marius Berlet','stars-lyong@gmail.com',3,4);


CREATE TABLE EDC1.CategorieAge
(
id int PRIMARY KEY,
   libelle VARCHAR(100),
   ageMin int,
   ageMax int
);

INSERT INTO EDC1.CategorieAge  VALUES (1,'Moins de 18 ans',6,18);
INSERT INTO EDC1.CategorieAge  VALUES (2,'Jeunes',19,30);
INSERT INTO EDC1.CategorieAge  VALUES (3,'Adultes',31,60);
INSERT INTO EDC1.CategorieAge  VALUES (4,'Vétérans',61,80);
INSERT INTO EDC1.CategorieAge  VALUES (5,'Séniors',81,120);


CREATE TABLE EDC1.Entreprise
(
id int PRIMARY KEY,
  nom VARCHAR(70) ,
   adresse varchar(200),
   email varchar(100)
);

INSERT INTO EDC1.Entreprise  VALUES (1,'MGEN','Place Montparnasse','mgen@gmail.com');
INSERT INTO EDC1.Entreprise  VALUES (2,'SNCF','Place Alleray','sncf@gmail.com');
INSERT INTO EDC1.Entreprise  VALUES (3,'Université Paris I','28 rue de Tolbiac','contact@univ-paris1.fr');
INSERT INTO EDC1.Entreprise  VALUES (4,'Mairie de Bagneres de Bigorre','28 place des vignaux','contact@mairie-bagneres.fr');


CREATE TABLE EDC1.pratiquant
(
id int PRIMARY KEY,
  nom VARCHAR(70) ,
  prenom VARCHAR(70) ,
   adresse varchar(200),
   email varchar(100)
);

INSERT INTO EDC1.pratiquant  VALUES (1,'PAGES','Brice','Centre Bigorre','brice.pages@gmail.com');
INSERT INTO EDC1.pratiquant  VALUES (2,'RINGOT','Jean','12 rue des Alouettes','jean.ringot@gmail.com');
INSERT INTO EDC1.pratiquant  VALUES (3,'DERUEL','Manon','24 rue de la Gare','manon.deruel@yahoo.com');
INSERT INTO EDC1.pratiquant  VALUES (4,'FARIE','David','62 rue de la Paix','david.farie@hotmail.com');
INSERT INTO EDC1.pratiquant  VALUES (5,'ROBERT','Thomas','24 bld Saint Germain 75005','thomas.robert@gmail.com');
INSERT INTO EDC1.pratiquant  VALUES (6,'DUPUIS','Paul','164 bld Saint Germain 75005','paul.dupuis@gmail.com');
INSERT INTO EDC1.pratiquant  VALUES (7,'BENDJEBBOUR','Miloud','52 bld Saint Michel 75005','m.b@hotmail.com');
INSERT INTO EDC1.pratiquant  VALUES (8,'GALAVIELLE','Pauline','23 rue de la Paix','p.galavielle@hotmail.com');



CREATE TABLE EDC1.Licence
(
numero int PRIMARY KEY,
annee int,
  nomResp VARCHAR(70) ,
  prenomResp VARCHAR(70) ,
  telResp VARCHAR(20),
  idEntreprise int references EDC1.Entreprise(id),
  idCateg int references EDC1.CategorieAge(id),
  idPratiquant int references EDC1.pratiquant(id),
  idClub int references EDC1.Club(id)
);

INSERT INTO EDC1.Licence  VALUES (13104512,2018,'RINGOT','Jean','06 24 29 32 64',4,3,1,7);
INSERT INTO EDC1.Licence  VALUES (14106886,2018,'RINGOT','Jean','06 24 29 32 64',4,4,2,7);
INSERT INTO EDC1.Licence  VALUES (12345608,2018,'DUPUIS','Paul','06 12 48 32 64',2,2,5,4);
INSERT INTO EDC1.Licence  VALUES (19564872,2018,'DUPUIS','Paul','06 12 48 32 64',1,3,7,5);
INSERT INTO EDC1.Licence  VALUES (10245896,2018,'DUPUIS','Paul','06 12 48 32 64',1,2,6,4);