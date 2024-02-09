SELECT p.nom_potion, SUM(c.qte * i.cout_ingredient)
FROM potion p
INNER JOIN composer c ON c.id_potion = p.id_potion
INNER JOIN ingredient i ON i.id_ingredient = c.id_ingredient
GROUP BY p.nom_potion