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
create table if not exists C as select * from copropriétaire limit 1; -- selection de la première élément dans la table copropriétaire
create table if not exists M as select * from membre limit 1; -- selection de la première élément dans la table membre
DECLARE C_quantity DECIMAL, /*declaration de variable*/
M_quantity DECIMAL; /*declaration de variable*/
SET C_quantity =SELECT count(*) from C , M_quantity = SELECT count(*) from M

if (C_quantity =1) then /*vérifier que la sélection est non null mais ERREUR à fixer ici*/
insert into propriétaire(utilisateur_id_u) values (I.utilisateur_id_u);
elseif ((C_quantity=0) and (M_quantity=1)) then 
insert into propriétaire(utilisateur_id_u)
values (M.utilisateur_id_u);
else truncate domicile;
end if;
end

//