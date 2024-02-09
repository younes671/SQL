SELECT p.nom_personnage, b.dose_boire
FROM personnage p
INNER JOIN boire b ON b.id_personnage = p.id_personnage
ORDER BY b.dose_boire DESC 