SELECT p.nom_potion
FROM composer c
INNER JOIN potion p ON p.id_potion = c.id_potion
INNER JOIN ingredient i ON i.id_ingredient = c.id_ingredient
WHERE i.nom_ingredient = "Poisson frais"
