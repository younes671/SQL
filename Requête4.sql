SELECT s.nom_specialite, COUNT(p.id_personnage) AS "nombre_personnage"
FROM specialite s
INNER JOIN personnage p ON p.id_specialite = s.id_specialite
GROUP BY p.id_specialite
ORDER BY nombre_personnage DESC