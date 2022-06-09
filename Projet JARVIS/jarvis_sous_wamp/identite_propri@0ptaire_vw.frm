TYPE=VIEW
query=select \'id_pro\' AS `id_pro`,\'nom_u\' AS `nom_u`,\'prenom_u\' AS `prenom_u` from `jarvis`.`utilisateur` join `jarvis`.`propriétaire` where (`jarvis`.`utilisateur`.`id_u` = `jarvis`.`propriétaire`.`utilisateur_id_u`)
md5=e9eb0e5af177cc2a6743dde2e44e5e3b
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-06-09 09:29:52
create-version=1
source=SELECT "id_pro","nom_u","prenom_u" FROM utilisateur,propriétaire WHERE id_u=utilisateur_id_u
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select \'id_pro\' AS `id_pro`,\'nom_u\' AS `nom_u`,\'prenom_u\' AS `prenom_u` from `jarvis`.`utilisateur` join `jarvis`.`propriétaire` where (`jarvis`.`utilisateur`.`id_u` = `jarvis`.`propriétaire`.`utilisateur_id_u`)
