CREATE VIEW VUES.V_pilotes_AF
AS SELECT *
FROM VUES.T_pilote_pil
WHERE cmp_comp = 'AF' ;
GO

CREATE VIEW VUES.V_Embauches(compagnie, prenom, nom, date_entree, paye)
AS SELECT cmp_comp, pil_prenom, pil_nom, pil_embauche, pil_salaire
FROM VUES.T_pilote_pil ;
GO
