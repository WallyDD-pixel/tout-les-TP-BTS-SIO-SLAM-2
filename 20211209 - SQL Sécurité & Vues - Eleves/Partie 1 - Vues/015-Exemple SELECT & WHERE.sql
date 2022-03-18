-- restriction verticale et horizontale

--> préalable
-- USE BD_Air_France;

CREATE VIEW VUES.V_Pil_responsables(code_brevet, prenom, nom, grade, compagnie, paye)
AS SELECT pil_brevet, pil_prenom, pil_nom, pil_fct, cmp_comp, pil_salaire
FROM   VUES.T_pilote_pil
WHERE  pil_brevet IN (SELECT pil_responsable FROM VUES.T_pilote_pil);
go
