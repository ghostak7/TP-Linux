#Creation de la table user
CREATE TABLE user (id_user BIGINT AUTO_INCREMENT NOT NULL, 
nom_user VARCHAR(50), 
prenom_user VARCHAR(50), 
mail_user VARCHAR(100), 
telephone_user DOUBLE, 
date_naissance_user DATE, 
PRIMARY KEY (id_user));  

#creation de la table projet
CREATE TABLE projet (id_projet BIGINT AUTO_INCREMENT NOT NULL, 
nom_projet VARCHAR(50), 
date_debut_projet DATE, 
date_fin_projet DATE, 
PRIMARY KEY (id_projet));

#creation de la table users_projets
CREATE TABLE users_projects (id_user AUTO_INCREMENT NOT NULL, 
id_projet NOT NULL, 
id_users_projects BIGINT, 
PRIMARY KEY (id_user,  id_projet));  

ALTER TABLE users_projects ADD CONSTRAINT FK_users_projects_id_user FOREIGN KEY (id_user) REFERENCES user (id_user); 
ALTER TABLE users_projects ADD CONSTRAINT FK_users_projects_id_projet FOREIGN KEY (id_projet) REFERENCES projet (id_projet); 