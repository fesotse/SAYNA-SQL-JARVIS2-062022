TYPE=VIEW
query=select \'id_copro\' AS `id_copro`,\'nom_u\' AS `nom_u`,\'prenom_u\' AS `prenom_u` from `jarvis`.`copropriétaire` join `jarvis`.`utilisateur` where (`jarvis`.`copropriétaire`.`utilisateur_id_u` = `jarvis`.`utilisateur`.`id_u`)
md5=166ad300bca3005c572ebeac9ae7942a
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-06-09 09:41:00
create-version=1
source=SELECT "id_copro","nom_u","prenom_u" FROM copropriétaire, utilisateur WHERE utilisateur_id_u=id_u
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select \'id_copro\' AS `id_copro`,\'nom_u\' AS `nom_u`,\'prenom_u\' AS `prenom_u` from `jarvis`.`copropriétaire` join `jarvis`.`utilisateur` where (`jarvis`.`copropriétaire`.`utilisateur_id_u` = `jarvis`.`utilisateur`.`id_u`)
