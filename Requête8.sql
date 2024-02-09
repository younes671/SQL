SELECT p.nom_personnage, SUM(c.qte) AS nb_casques
FROM prendre_casque c
INNER JOIN personnage p ON p.id_personnage = c.id_personnage
INNER JOIN bataille b ON b.id_bataille = c.id_bataille
AND c.id_bataille = b.id_bataille
AND b.nom_bataille = "Bataille du village gaulois"
GROUP BY p.id_personnage
HAVING nb_casques >= ALL(
SELECT SUM(c.qte)
 FROM prendre_casque c, bataille b
 WHERE b.id_bataille = c.id_bataille
 AND b.nom_bataille = 'Bataille du village gaulois'
 GROUP BY c.id_personnage
) 