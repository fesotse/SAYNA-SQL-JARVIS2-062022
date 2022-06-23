DELIMITER |
CREATE trigger utilisateur_affectation /* creation du trigger d'affectation des roles tels que si lien = 0 c'est membre et si lien = 1 c'est copropriétaire*/ 
AFTER INSERT ON utilisateur
for each row 
if (new.lien_parent=1) then
insert into copropriétaire (utilisateur_id_u)
values (new.id_u);
elseif (new.lien_parent=0) then 
insert into membre(utilisateur_id_u)
values (new.id_u);
END IF;
end
|

DELIMITER |
CREATE trigger utilisateur_affectation_updater
AFTER update ON utilisateur
for each row 
if (new.lien_parent=1) then
insert into copropriétaire (utilisateur_id_u)
values (new.id_u);
elseif (new.lien_parent=0) then 
insert into membre(utilisateur_id_u)
values (new.id_u);
END IF;
end
|
delimiter //
create trigger proprio_suppression
after delete on propriétaire
for each row 
create table I as select * from copropriétaire limit 1; /*--selection de la première élément dans la table copropriétaire*/
create table M as select * from membre limit 1; /*--selection de la première élément dans la table membre*/
if (I!=null) then /*vérifier que la sélection est non null mais ERREUR à fixer ici*/
insert into propriétaire(utilisateur_id_u) values (I.utilisateur_id_u);
elseif (I=null and M!=null) then 
insert into propriétaire(utilisateur_id_u)
values (M.utilisateur_id_u);
else truncate domicile;
end if;
end

//