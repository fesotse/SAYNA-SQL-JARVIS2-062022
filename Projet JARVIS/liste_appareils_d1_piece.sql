select nom_piece,nom_appareil from appareils
left join appareils_has_piece
on appareils.id_appareil=appareils_has_piece.appareils_id_appareil  
left join piece
on appareils_has_piece.piece_id_piece=piece.id_piece where appareils_has_piece.piece_id_piece 
order by nom_piece asc