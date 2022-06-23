create view utilisateur_membre_vw as
select * from utilisateur,membre where utilisateur.id_u = membre.utilisateur_id_u
;
create view utilisateur_copropriétaire_vw as
select * from utilisateur, copropriétaire where utilisateur.id_u = copropriétaire.utilisateur_id_u;

create view utilisateur_propriétaire_vw as
select * from utilisateur, propriétaire where utilisateur.id_u = propriétaire.utilisateur_id_u;