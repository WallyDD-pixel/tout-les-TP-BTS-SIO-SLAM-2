-- Declaration d'une variable NB_TOTAL_EMPLOYES
DECLARE @NB_TOTAL_EMPLOYES INT =0 ;
-- Affectation du r�sltat d'une requ�te SELECT � la variable NB_TOTAL_EMPLOYES
SELECT @NB_TOTAL_EMPLOYES = SUM(NB_EMPLOYES) FROM SOFTWARE.DEVELOPPEUR
-- Impression du r�sultat en sortie
PRINT 'il y a ' + CAST(@NB_TOTAL_EMPLOYES AS VARCHAR(10)) + ' employes'

