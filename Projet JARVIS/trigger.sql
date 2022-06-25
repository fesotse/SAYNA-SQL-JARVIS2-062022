-- trigger pour l'affectation des roles des utilisateurs
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
-- trigger pour l'affectation des roles des utilisateurs après update
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

/* creation de vieuw pour la liste de tous les utilisateur*/
create view utilisateur_domicile_vw as
SELECT * FROM contenir
right join utilisateur
on contenir.utilisateur_id_u = utilisateur.id_u
order by Domicile_id_domicile,lien_parent desc; -- cette table sera utilisée dans le trigger

-- trigger pour la suppression de domicile ou non
delimiter //
create trigger proprio_suppression
before delete on propriétaire
for each row 
where 
 -- check id domicile proprio = id domicile utilisateur2
if ((C-> not isEmpty )) then /*vérifier que la sélection est non null mais ERREUR à fixer ici*/
insert into propriétaire(utilisateur_id_u) values (I.utilisateur_id_u);
elseif (empty(C_quantity)) and (!empty(M_quantity)) then 
insert into propriétaire(utilisateur_id_u)
values (M.utilisateur_id_u);
else truncate domicile;
end if;
end

//