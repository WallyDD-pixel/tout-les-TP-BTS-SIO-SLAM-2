--> préalable
-- USE BD_Air_France;

INSERT INTO VUES.V_pilotes_AF VALUES 
('PL-14','Bruno','Dufaut','20100406','PIL',4700,'AF',NULL);



UPDATE VUES.V_pilotes_AF 
SET    pil_salaire =  pil_salaire* 1.2
WHERE  pil_brevet = 'PL-1';


INSERT INTO VUES.V_Embauches
VALUES ('AF','Bruno','Dufaut','20100406',4700);