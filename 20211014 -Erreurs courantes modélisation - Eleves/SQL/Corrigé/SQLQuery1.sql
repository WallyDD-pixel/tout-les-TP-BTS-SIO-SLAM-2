SELECT P.NOM_POSTE
FROM VIDEOLOC.POSTE P
LEFT JOIN VIDEOLOC.EMPLOYE E
ON E.FK_CLEF_POSTE = P.CLEF_POSTE
WHERE E.CLEF_EMPLOYE IS NULL