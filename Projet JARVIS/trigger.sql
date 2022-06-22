DELIMITER |
CREATE trigger utilisateur_affectation
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