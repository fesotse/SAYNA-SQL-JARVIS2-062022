select Piece_id_piece,nom_piece,nom_appareil from appareils,piece
where appareils.Piece_id_piece=piece.id_piece
order by Piece_id_piece asc