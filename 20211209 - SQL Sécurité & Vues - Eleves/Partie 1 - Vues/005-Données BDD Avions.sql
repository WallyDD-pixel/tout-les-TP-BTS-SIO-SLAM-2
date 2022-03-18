
-- Création du schéma des vues
--> préalable
IF NOT EXISTS ( SELECT  *
                FROM    sys.schemas
                WHERE   name = N'VUES' )
    EXEC('CREATE SCHEMA [VUES]');
GO

DROP TABLE IF EXISTS VUES.T_pilote_pil ;

DROP TABLE IF EXISTS VUES.T_compagnie_cmp ;


CREATE TABLE VUES.T_compagnie_cmp
(cmp_comp          VARCHAR(4), 
 cmp_pays          CHAR(3), 
 cmp_nom           VARCHAR(15), 
 pil_chef          VARCHAR(6),
 CONSTRAINT        pk_compagnie    PRIMARY KEY(cmp_comp));
GO

INSERT INTO VUES.T_compagnie_cmp VALUES ('AF',   'fr', 'Air France',   'PL-2');
INSERT INTO VUES.T_compagnie_cmp VALUES ('SING', 'sn', 'Singapore AL', 'PL-6');
INSERT INTO VUES.T_compagnie_cmp VALUES ('CAST', 'fr', 'Castanet AL',  'PL-10');

CREATE TABLE VUES.T_pilote_pil
(pil_brevet        VARCHAR(6), 
 pil_prenom        VARCHAR(15)   NOT NULL, 
 pil_nom           VARCHAR(15)   NOT NULL, 
 pil_embauche      DATE          NOT NULL, 
 pil_fct           CHAR(3)       NOT NULL, 
 pil_salaire       DECIMAL(7,2), 
 cmp_comp          VARCHAR(4), 
 pil_responsable   VARCHAR(6),
 CONSTRAINT        pk_pilote       PRIMARY KEY(pil_brevet),
 CONSTRAINT        fk_pil_cmp      FOREIGN KEY(cmp_comp) 
                                   REFERENCES VUES.T_compagnie_cmp(cmp_comp),
 CONSTRAINT        fk_pil_chef_pil FOREIGN KEY(pil_responsable) 
                                   REFERENCES VUES.T_pilote_pil(pil_brevet));
GO

INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-2', 'Pierre','Filloux',   '20080708', 'CDB', 5700, 'AF',   NULL);
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-1', 'Romaric','Benech',   '20100905', 'PIL', 3400, 'AF',   'PL-2');
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-3', 'Vincent','Gindre',   '20100413', 'PIL', 3600, 'AF',   'PL-1');
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-4', 'Aime','Giaconne',    '20111224', 'CDB', 4200, 'AF',   'PL-2');
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-6', 'Christian','Bec',    '20111004', 'CDB', 4500, 'SING', NULL);
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-5', 'Pierre','Calac',     '20120416', 'PIL', 3000, 'SING', 'PL-6');
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-7', 'Bruno','Bardon',     '20091021', 'CDB', 5800, 'SING', 'PL-6');
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-8', 'Patrice','Determe',  '20071213', 'CDB', 7000, 'CAST', NULL);
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-9', 'Christian','Soutou', '20100402', 'PIL', 3800, 'CAST', 'PL-8');
INSERT INTO VUES.T_pilote_pil 
VALUES ('PL-10', 'Bernard','Duclerc', '20100406', 'PIL', 4700, 'CAST', 'PL-8');

