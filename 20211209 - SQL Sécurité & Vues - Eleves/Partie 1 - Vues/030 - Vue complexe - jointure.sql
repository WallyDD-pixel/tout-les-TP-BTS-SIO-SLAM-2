--> préalable
-- USE BD_Air_France;

CREATE VIEW Vues.V_pilotes_comp
AS 
SELECT     c.cmp_comp, c.cmp_nom, p.pil_brevet, pil_prenom, 
           p.pil_nom, p.pil_embauche, p.pil_fct, p.pil_salaire
FROM       Vues.T_pilote_pil  p
INNER JOIN Vues.T_compagnie_cmp c
ON         p.cmp_comp = c.cmp_comp
WHERE      c.cmp_pays = 'fr';
go

--> requêtes SELECT sur vue :

SELECT * FROM Vues.V_pilotes_comp;

SELECT * FROM Vues.V_pilotes_comp
ORDER BY   cmp_comp, pil_nom, pil_prenom;
