SELECT b.nom_bataille, SUM(c.qte) AS nb_casques
FROM prendre_casque c
INNER JOIN bataille b ON b.id_bataille = c.id_bataille
AND c.id_bataille = b.id_bataille
GROUP BY b.id_bataille
HAVING nb_casques >= ALL(
SELECT SUM(c.qte)
 FROM prendre_casque c, bataille b
 WHERE b.id_bataille = c.id_bataille
 GROUP BY c.id_bataille
)