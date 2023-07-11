create database regime ;
use  regime;
CREATE TABLE genres(
    id int PRIMARY KEY auto_increment,
    nom VARCHAR(20)
);

CREATE TABLE utilisateurs (
  idutilisateurs VARCHAR(7) PRIMARY key,
  nom VARCHAR(125),
  taille float,
  mail VARCHAR(125),
  mdp VARCHAR(125),
  date_naissance date ,
  idgenre INT,
  poids FLOAT,
  FOREIGN key(idgenre)REFERENCES genres(id)
);
ALTER TABLE utilisateurs
MODIFY COLUMN idutilisateurs VARCHAR(7) NOT NULL,
ADD PRIMARY KEY (idutilisateurs);

drop table admin;

create table admin(
  idadmin int primary key auto_increment,
  nomadmin VARCHAR(50),
  mdp VARCHAR(8)
);
insert into admin(nomadmin,mdp) values ('Mertina','mertina44');

create table CategorieAliment(
  idCategorie int PRIMARY KEY auto_increment,
  nomCategorie VARCHAR(100)
);


create table Objectif(
  idobjectif int PRIMARY Key auto_increment, 
  nomobjectif VARCHAR(100)
);


create table ObjectUtilisateur(
  idO int PRIMARY Key auto_increment, 
  idutilisateur VARCHAR(7),
  idobjectif int,
  datef date,
  FOREIGN KEY(idutilisateur) REFERENCES utilisateurs(idutilisateurs),
  FOREIGN KEY(idobjectif) REFERENCES Objectif(idobjectif)
);

create table Aliment(
  idAliment int PRIMARY key   auto_increment,
  idCategorie int ,
  nomAliment VARCHAR(100),
  FOREIGN KEY(idCategorie) REFERENCES CategorieAliment(idCategorie) 
);

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

create table code(
  idcode VARCHAR(8) PRIMARY key,
  montant float
);



CREATE TABLE VolaUtilisateur(
  idVola int PRIMARY key AUTO_INCREMENT,
  idUtilisateur varchar(8) ,
  idcode VARCHAR(8),
  dateAchat date, 
  etat int ,
  FOREIGN KEY(idutilisateur) REFERENCES utilisateurs(idutilisateurs),
   FOREIGN KEY(idcode) REFERENCES code(idcode)
);


create table regime(
  idRegime int PRIMARY key auto_increment,
  nomRegime VARCHAR(100),
  nombrejour int
);
alter table regime add column montant float;
alter table regime add column variance float;




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
  idexerice VARCHAR(8) PRIMARY key,
  nomexerice VARCHAR(8),
  unite VARCHAR(7)
);

create table regimePhysique(
  idRegime int PRIMARY key,
  nomRegime VARCHAR(50),
  nombrejour int
);
alter table regimePhysique add column montant float;
alter table regimePhysique add column variance float;

create table detaille_regimeP(
  iddetaille int,
  idRegime INT,
  idexerice VARCHAR(8),
  NumeroDeJour INT,
  quantiter int,
  Heure TIME,
  FOREIGN KEY (idRegime) REFERENCES regimePhysique (idregime),
  FOREIGN KEY (idexerice) REFERENCES exercice (idexerice)
);


create table suivitRegimeA(
  idsuivit int PRIMARY key AUTO_INCREMENT,
  iduregime int,
  numjour int,
  datef date,
  FOREIGN KEY (iduregime) REFERENCES userRegimeA (iduregime)
);

create table suivitRegimeP(
  idsuivit int PRIMARY key AUTO_INCREMENT,
  iduregime int,
  numjour int,
  datef date,
  FOREIGN KEY (iduregime) REFERENCES userRegimeP (iduregime)
);



create table userRegimeA(
  iduregime int PRIMARY key AUTO_INCREMENT,
  idutilisateurs VARCHAR(7),
  idRegime int ,
  dater date,
   FOREIGN KEY (idRegime) REFERENCES regime (idregime)
);

create table userRegimeP(
  iduregime int PRIMARY key AUTO_INCREMENT,
  idutilisateurs VARCHAR(7),
  idRegime int ,
  dater date,
  FOREIGN KEY (idRegime) REFERENCES regimePhysique (idregime)
);



create table depenceUtilisateur(
  iddepence int PRIMARY key auto_increment,
  montant float DEFAULT 0,
  idutilisateur VARCHAR(8),
  FOREIGN KEY(idutilisateur) REFERENCES utilisateurs(idutilisateurs)
);


