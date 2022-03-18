CREATE SCHEMA INFAIN;
GO

CREATE TABLE INFAIN.DOSSIER
(NUMERO VARCHAR(20) NOT NULL PRIMARY KEY,
NOM VARCHAR(50) NOT NULL,
PRENOM VARCHAR(50),
DATE_ENTREE DATE,
DATE_SORTIE DATE);
ON INFAIN.INTERVENTION

INSERT INTO INFAIN.DOSSIER VALUES('ABCDEF123456','ROBERT','Timothee','2010-04-02','2011-05-01');
INSERT INTO INFAIN.DOSSIER VALUES('APOIRA123456','DUPOND','Jean','2010-03-12','2010-08-11');
INSERT INTO INFAIN.DOSSIER VALUES('GPOIRA987654','DUPONT','Patrick','2010-03-25','2010-11-05');
INSERT INTO INFAIN.DOSSIER VALUES('MAPASA544654','MAGRITTE','Paula','2010-03-12','2010-09-05');
INSERT INTO INFAIN.DOSSIER VALUES('AVIASA545114','PERLIPOPETTE','Vanessa','2010-02-25','2010-06-15');

GO

CREATE TABLE INFAIN.SALARIE
(MATRICULE VARCHAR(20) NOT NULL PRIMARY KEY,
NOM VARCHAR(50) NOT NULL,
PRENOM VARCHAR(50) ) ;

INSERT INTO INFAIN.SALARIE VALUES('PI-97132','PIERRAFEU','Julie');
INSERT INTO INFAIN.SALARIE VALUES('OI-65412','DESPRES','Françoise');
INSERT INTO INFAIN.SALARIE VALUES('LA-98732','POULAIN','Amélie');
INSERT INTO INFAIN.SALARIE VALUES('DE-45712','DEFERRE','Gaston');
INSERT INTO INFAIN.SALARIE VALUES('MA-95834','MARCHE','Georgette');

GO

CREATE TABLE INFAIN.VEHICULE(
NUMERO INT NOT NULL PRIMARY KEY IDENTITY(1,1),
noImmat CHAR(9) NOT NULL,
MARQUE VARCHAR(40),
CATEGORIE VARCHAR(30),
DATEACQUISITION DATE
) ;



INSERT INTO INFAIN.VEHICULE(noImmat, Marque, CATEGORIE, DATEACQUISITION) VALUES('AB-837-FB','DACIA','Break','2008-05-23');
INSERT INTO INFAIN.VEHICULE(noImmat, Marque, CATEGORIE, DATEACQUISITION) VALUES('AB-737-AT','RENAULT','Utilitaire','2007-07-11');
INSERT INTO INFAIN.VEHICULE(noImmat, Marque, CATEGORIE, DATEACQUISITION) VALUES('PO-212-MA','Citroen','Break','2010-09-08');

GO

CREATE TABLE INFAIN.INTERVENTION(
ID_INTERVENTION INT NOT NULL PRIMARY KEY IDENTITY(1,1),
dateIntervention DATE NOT NULL,
heureDebut TIME NOT NULL,
matriculeSalarie VARCHAR(20) NOT NULL FOREIGN KEY REFERENCES INFAIN.SALARIE (MATRICULE) ,
nbKm INT NOT NULL,
dureeIntervention INT NOT NULL,
noDossier VARCHAR(20) FOREIGN KEY REFERENCES INFAIN.DOSSIER (NUMERO),
noVehicule INT FOREIGN KEY REFERENCES INFAIN.VEHICULE (NUMERO)

INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-03','09:00:00','LA-98732',12,30,'ABCDEF123456',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-04','09:30:00','LA-98732',17,25,'ABCDEF123456',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-09','09:40:00','LA-98732',19,25,'ABCDEF123456',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-11','09:30:00','LA-98732',14,25,'ABCDEF123456',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-18','09:30:00','LA-98732',23,30,'ABCDEF123456',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-02','09:00:00','LA-98732',32,40,'APOIRA123456',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-04','11:30:00','LA-98732',9,40,'APOIRA123456',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-09','19:40:00','LA-98732',24,35,'APOIRA123456',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-11','10:30:00','LA-98732',11,40,'APOIRA123456',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-18','10:30:00','LA-98732',8,40,'APOIRA123456',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-02','09:00:00','DE-45712',32,40,'MAPASA544654',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-06','11:30:00','DE-45712',9,40,'MAPASA544654',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-09','19:40:00','DE-45712',24,35,'MAPASA544654',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-25','10:30:00','DE-45712',11,40,'MAPASA544654',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-27','10:30:00','DE-45712',8,40,'MAPASA544654',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-07','09:00:00','MA-95834',65,30,'AVIASA545114',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-08','11:30:00','MA-95834',11,30,'AVIASA545114',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-12','19:40:00','MA-95834',17,35,'AVIASA545114',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-26','10:30:00','MA-95834',18,30,'AVIASA545114',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-28','10:30:00','MA-95834',5,30,'AVIASA545114',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-07','14:00:00','PI-97132',9,30,'GPOIRA987654',1);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-08','14:30:00','PI-97132',40,30,'GPOIRA987654',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-12','14:40:00','PI-97132',27,35,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-16','15:30:00','PI-97132',36,30,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-19','15:30:00','PI-97132',51,30,'GPOIRA987654',2);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-22','15:40:00','PI-97132',15,35,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-25','15:30:00','PI-97132',17,30,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-28','16:30:00','PI-97132',9,30,'GPOIRA987654',2);

GO

CREATE TABLE INFAIN.INTERVENTION_BIS(
dateIntervention DATE NOT NULL,
heureDebut TIME NOT NULL,
matriculeSalarie VARCHAR(20) NOT NULL,
nbKm INT,
dureeIntervention INT,
noDossier VARCHAR(20),
noVehicule INT
);

INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-03','09:00:00','LA-98732',12,30,'ABCDEF123456',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-04','09:30:00','LA-98732',17,25,'ABCDEF123456',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-09','09:40:00','LA-98732',19,25,'ABCDEF123456',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-11','09:30:00','LA-98732',14,25,'ABCDEF123456',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-18','09:30:00','LA-98732',23,30,'ABCDEF123456',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-02','09:00:00','LA-98732',32,40,'APOIRA123456',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-04','11:30:00','LA-98732',9,40,'APOIRA123456',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-09','19:40:00','LA-98732',24,35,'APOIRA123456',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-11','10:30:00','LA-98732',11,40,'APOIRA123456',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-18','10:30:00','LA-98732',8,40,'APOIRA123456',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-02','09:00:00','DE-45712',32,40,'MAPASA544654',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-06','11:30:00','DE-45712',9,40,'MAPASA544654',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-09','19:40:00','DE-45712',24,35,'MAPASA544654',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-25','10:30:00','DE-45712',11,40,'MAPASA544654',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-27','10:30:00','DE-45712',8,40,'MAPASA544654',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-07','09:00:00','MA-95834',65,30,'AVIASA545114',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-08','11:30:00','MA-95834',11,30,'AVIASA545114',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-12','19:40:00','MA-95834',17,35,'AVIASA545114',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-26','10:30:00','MA-95834',18,30,'AVIASA545114',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-28','10:30:00','MA-95834',5,30,'AVIASA545114',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-07','14:00:00','PI-97132',9,30,'GPOIRA987654',1);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-08','14:30:00','PI-97132',40,30,'GPOIRA987654',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-12','14:40:00','PI-97132',27,35,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-16','15:30:00','PI-97132',36,30,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-19','15:30:00','PI-97132',51,30,'GPOIRA987654',2);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-22','15:40:00','PI-97132',15,35,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-25','15:30:00','PI-97132',17,30,'GPOIRA987654',3);
INSERT INTO INFAIN.INTERVENTION_BIS(dateIntervention,heureDebut,matriculeSalarie, nbKm, dureeIntervention, noDossier, noVehicule) VALUES('2010-04-28','16:30:00','PI-97132',9,30,'GPOIRA987654',2);

