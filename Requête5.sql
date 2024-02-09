SELECT b.nom_bataille, DATE_FORMAT(b.date_bataille, '%d/%m/%Y') AS "date_bataille", l.nom_lieu
FROM bataille b
INNER JOIN lieu l ON l.id_lieu = b.id_lieu
ORDER BY YEAR(b.date_bataille) DESC