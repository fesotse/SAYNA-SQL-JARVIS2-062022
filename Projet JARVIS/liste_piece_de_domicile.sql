SELECT 
    id_domicile, nom_piece
FROM
    domicile
left join 
	piece_has_domicile
on
    domicile.id_domicile = piece_has_domicile.Domicile_id_domicile
left join
	piece
on
	piece.id_piece= piece_has_domicile.piece_id_piece