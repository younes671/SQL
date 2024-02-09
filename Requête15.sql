SELECT p.nom_personnage
FROM personnage p
LEFT JOIN boire b ON b.id_personnage = p.id_personnage
WHERE b.dose_boire IS NULL 