SELECT
P.NOM_POSTE
FROM CANDIDATURE.POSTE P
LEFT JOIN CANDIDATURE.CANDIDAT_POSTE CP
ON P.CLEF_POSTE = CP.CLEF_POSTE
WHERE CP.CLEF_POSTE IS NULL