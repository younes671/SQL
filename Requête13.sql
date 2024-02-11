SELECT l.nom_lieu, COUNT(p.id_personnage) AS nombre_personnage
FROM lieu l
INNER JOIN personnage p ON l.id_lieu = p.id_lieu
AND p.id_lieu = l.id_lieu
WHERE l.nom_lieu != "Village gaulois"
GROUP BY l.id_lieu
HAVING nombre_personnage >= ALL (
SELECT COUNT(p.id_personnage)
 FROM personnage p, lieu l
 WHERE l.id_lieu = p.id_lieu
 AND l.nom_lieu != "Village gaulois"
 GROUP BY p.id_lieu
)