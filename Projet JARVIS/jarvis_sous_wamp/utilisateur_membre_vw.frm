TYPE=VIEW
query=select `jarvis`.`utilisateur`.`prenom_u` AS `prenom_u`,`jarvis`.`utilisateur`.`nom_u` AS `nom_u`,`jarvis`.`membre`.`lien_parent` AS `lien_parent` from `jarvis`.`utilisateur` join `jarvis`.`membre` where (`jarvis`.`utilisateur`.`id_u` = `jarvis`.`membre`.`utilisateur_id_u`)
md5=49ee50a62cad2e90cfe26a50cc4e0149
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-06-09 09:14:42
create-version=1
source=SELECT prenom_u,nom_u,lien_parent FROM utilisateur,membre WHERE id_u = utilisateur_id_u
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `jarvis`.`utilisateur`.`prenom_u` AS `prenom_u`,`jarvis`.`utilisateur`.`nom_u` AS `nom_u`,`jarvis`.`membre`.`lien_parent` AS `lien_parent` from `jarvis`.`utilisateur` join `jarvis`.`membre` where (`jarvis`.`utilisateur`.`id_u` = `jarvis`.`membre`.`utilisateur_id_u`)
