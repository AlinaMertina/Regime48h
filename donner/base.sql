create database regime ;
use  regime;
CREATE TABLE genres(
    id int PRIMARY KEY auto_increment,
    nom VARCHAR(20)
);

CREATE TABLE utilisateurs (
  idutilisateurs VARCHAR(7),
  nom VARCHAR(125),
  taille float,
  mail VARCHAR(125),
  mdp VARCHAR(125),
  date_naissance date ,
  idgenre INT,
  poids FLOAT,
  FOREIGN key(idgenre)REFERENCES genres(id)
);

 create table CategorieAliment(
   idCategorie int PRIMARY KEY auto_increment,
   nomCategorie VARCHAR(100)
 );


create table Aliment(
  idAliment int PRIMARY key   auto_increment,
  idCategorie int ,
  nomAliment VARCHAR(100),
  FOREIGN KEY(idCategorie) REFERENCES CategorieAliment(idCategorie) 
);

insert
create table  Plat(
  idPlat int PRIMARY KEY auto_increment,
  nomPlat VARCHAR(100)
);
 CREATE TABLE detailPlat(
   idDetail  int PRIMARY key auto_increment,
   idPlat int ,
   idAliment int ,
   poids float,
   FOREIGN key(idPlat) REFERENCES Plat(idPlat),
   FOREIGN KEY(idAliment) REFERENCES Aliment(idAliment)
 );
INSERT INTO CategorieAliment (nomCategorie) VALUES ('Fruits');
INSERT INTO CategorieAliment (nomCategorie) VALUES ('Légumes');
INSERT INTO CategorieAliment (nomCategorie) VALUES ('Viandes');
INSERT INTO CategorieAliment (nomCategorie) VALUES ('Poissons');
-- -------------------------------------------------------------
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (1, 'Pomme');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (1, 'Banane');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (2, 'Carotte');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (2, 'Tomate');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (3, 'Bœuf');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (3, 'Poulet');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (4, 'Lait');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (4, 'Fromage');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (5, 'Saumon');
INSERT INTO Aliment (idCategorie, nomAliment) VALUES (5, 'Thon');
-- -------------------------------------------------------------
INSERT INTO Plat (nomPlat) VALUES ('Pizza');
INSERT INTO Plat (nomPlat) VALUES ('Sushi');
INSERT INTO Plat (nomPlat) VALUES ('Burger');
INSERT INTO Plat (nomPlat) VALUES ('Pâtes');
INSERT INTO Plat (nomPlat) VALUES ('Salade');
INSERT INTO Plat (nomPlat) VALUES ('Steak-frites');
-----------------------------------------------------------------
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (1, 1, 200);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (1, 2, 150);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (2, 3, 100);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (2, 4, 120);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (3, 5, 80);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (3, 6, 90);


#1e847f
#ecc19c
#000000

http://127.0.0.1/Projet24h/index.php/CT_CRUD/updatacategorie?nom=Fruit&&id=1