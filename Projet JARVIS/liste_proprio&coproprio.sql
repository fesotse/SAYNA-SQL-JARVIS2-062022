SELECT distinct
    id_domicile, id_u, nom_u, prenom_u
FROM
    propriétaire,
    copropriétaire,
    utilisateur,
    contenir,
    domicile
WHERE
    (contenir.Domicile_id_domicile = domicile.id_domicile
        AND contenir.utilisateur_id_u = utilisateur.id_u
        AND ((propriétaire.utilisateur_id_u = utilisateur.id_u)
        OR
       (copropriétaire.utilisateur_id_u = utilisateur.id_u)))
order by id_domicile ASC
;
/*utilisateur.id_u = contenir.utilisateur_id_u and contenir.Domicile_id_domicile= domicile.id_domicile and (propriétaire.utilisateur_id_u=utilisateur.id_u or copropriétaire.utilisateur_id_u= utilisateur.id_u) order by id_domicile