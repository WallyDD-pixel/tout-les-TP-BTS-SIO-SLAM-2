CREATE VIEW VUES.V_Masse_Salariale (compagnie, masse_salariale)
AS     
SELECT   cmp_comp, SUM(pil_salaire)
FROM     VUES.T_pilote_pil
GROUP BY cmp_comp;
go