SELECT tc.nom_type_casque, SUM(tc.id_type_casque) AS nb_casque_par_type , SUM(tc.id_type_casque * c.cout_casque) AS cout
FROM type_casque tc
INNER JOIN casque c ON tc.id_type_casque = c.id_type_casque
GROUP BY tc.nom_type_casque
ORDER BY cout DESC 