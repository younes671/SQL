SELECT i.nom_ingredient, i.cout_ingredient, c.qte
FROM ingredient i
INNER JOIN composer c ON c.id_ingredient = i.id_ingredient
INNER JOIN potion p ON p.id_potion = c.id_potion
WHERE p.nom_potion = "Santé"
