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

idCategorie,nomAliment


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


create table regime(
  idRegime int PRIMARY key auto_increment,
  nomRegime VARCHAR(100),
  nombrejour int
);



CREATE TABLE detailRegime (
  idDetail INT PRIMARY KEY AUTO_INCREMENT,
  idRegime INT,
  idPlat INT,
  NumeroDeJour INT,
  Heure TIME,
  FOREIGN KEY (idRegime) REFERENCES regime (idRegime),
  FOREIGN KEY (idPlat) REFERENCES Plat (idPlat)
);

create table exercice(
  idexerice VARCHAR(8),
  nomexerice VARCHAR(8),
  unite VARCHAR(7)
);




delete from exercice wher idexercice not in ('ECX0001','ECX0002','ECX0003','ECX0004','ECX0005')

ECX0001
ECX0002


create table regimePhysique(
  idregime int,
  nomregime VARCHAR(50),
  nombrejour int
);

create table detaille_regimeP(
  iddetaille int,
  idRegime INT,
  idexerice INT,
  NumeroDeJour INT,
  quantiter int,
  Heure TIME,
  FOREIGN KEY (idRegime) REFERENCES regimePhysique (idregime),
  FOREIGN KEY (idPlat) REFERENCES Plat (idPlat)
);






#1e847f
#ecc19c
#000000

