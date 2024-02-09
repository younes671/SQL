SELECT p.nom_personnage, s.nom_specialite, p.adresse_personnage, l.nom_lieu
FROM personnage p
INNER JOIN specialite s ON s.id_specialite = p.id_specialite
INNER JOIN lieu l ON l.id_lieu = p.id_lieu
ORDER BY p.nom_personnage;