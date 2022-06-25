SELECT 
    id_domicile , nom_appareil, type_appareil
FROM
    domicile
left join
	piece_has_domicile
on
	domicile.id_domicile=piece_has_domicile.domicile_id_domicile
left join
	piece
on 
	piece.id_piece=piece_has_domicile.piece_id_piece
left join
	appareils_has_piece
on
	appareils_has_piece.piece_id_piece=piece.id_piece
left join
	appareils
on
	appareils.id_appareil=appareils_has_piece.appareils_id_appareil 
    where appareils.id_appareil;
/*WHERE
    domicile.id_domicile = piece.Domicile_id_domicile
        AND piece.id_piece = appareils.Piece_id_piece
ORDER BY id_domicile ASC