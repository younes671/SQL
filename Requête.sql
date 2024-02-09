SELECT l.id_lieu, COUNT(p.id_personnage) AS "nombre_personnage"
FROM lieu l
JOIN personnage p ON l.id_lieu = p.id_lieu
GROUP BY l.id_lieu
ORDER BY nombre_personnage DESC


