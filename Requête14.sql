SELECT p.nom_personnage
FROM personnage p
LEFT JOIN autoriser_boire ab ON ab.id_potion = p.id_personnage
WHERE ab.id_potion IS NULL 
