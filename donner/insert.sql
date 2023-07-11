insert INTO genres(nom) VALUES('Homme');
insert INTO genres(nom) VALUES('Femme');

insert into utilisateurs (idutilisateurs,nom,mdp,mailidgenre,poids,taille)  values ('UTL00001','Mertina',"mertina44","mertina@gmail.com",2,45,70);



insert into CategorieAliment values (1,'Fruit');
 insert into CategorieAliment values (2,'Legume bas');
 insert into CategorieAliment values (3,'Legume haut');
 insert into CategorieAliment values (4,'Viande Rouge');
 insert into CategorieAliment values (5,'Viande Blanc');

insert Aliment (idCategorie,nomAliment) values (1,'Pomme');
insert Aliment (idCategorie,nomAliment) values (1,'Banane');
insert Aliment (idCategorie,nomAliment) values (1,'Orange');
insert Aliment (idCategorie,nomAliment) values (1,'Fraises');
insert Aliment (idCategorie,nomAliment) values (1,'Kiwi');

insert Aliment (idCategorie,nomAliment) values (2,'Carotte');
insert Aliment (idCategorie,nomAliment) values (2,'Pomme de terre');
insert Aliment (idCategorie,nomAliment) values (2,'Poivron');
insert Aliment (idCategorie,nomAliment) values (2,'Corgette');
insert Aliment (idCategorie,nomAliment) values (2,'Tomata');

insert Aliment (idCategorie,nomAliment) values (3,'Radis');
insert Aliment (idCategorie,nomAliment) values (3,'Laitue');
insert Aliment (idCategorie,nomAliment) values (3,'Épinard');
insert Aliment (idCategorie,nomAliment) values (3,'Céleri');
insert Aliment (idCategorie,nomAliment) values (3,'Asperge');


insert Aliment (idCategorie,nomAliment) values (4,'Bœuf');
insert Aliment (idCategorie,nomAliment) values (4,'Porc');
insert Aliment (idCategorie,nomAliment) values (4,'Agneau');
insert Aliment (idCategorie,nomAliment) values (4,'Cheval');
insert Aliment (idCategorie,nomAliment) values (4,'Gibier');

insert Aliment (idCategorie,nomAliment) values (5,'Poulet');
insert Aliment (idCategorie,nomAliment) values (5,'Dinde');
insert Aliment (idCategorie,nomAliment) values (5,'Canard');
insert Aliment (idCategorie,nomAliment) values (5,'Lapin');
insert Aliment (idCategorie,nomAliment) values (5,'Veau');



insert into plat(idPlat,nomPlat) values(1,'Salade meditaraneenne');

insert into Plat(idPlat,nomPlat) values(2,'Saumon grille');
insert into Plat(idPlat,nomPlat) values(3,'Poulets aux legumes sautes');
insert into Plat(idPlat,nomPlat) values(4,'Quinoa aux legumes');
insert into Plat(idPlat,nomPlat) values(5,'Salade de poulet grilles');
insert into Plat(idPlat,nomPlat) values(6,'Poisson en papillote');
insert into Plat(idPlat,nomPlat) values(7,'Tofu aux legumes sautes');
insert into Plat(idPlat,nomPlat) values(8,'Soupe legumes');
insert into Plat(idPlat,nomPlat) values(9,'Salade de quiunoa et legumes rotis');
insert into Plat(idPlat,nomPlat) values(10,'Bowi de legumes grilles avec riz complet');

insert into detailPlat(idPlat,idAliment,poids) values (1,1,200);
insert into detailPlat(idPlat,idAliment,poids) values (1,2,259);
insert into detailPlat(idPlat,idAliment,poids) values (1,3,100);
insert into detailPlat(idPlat,idAliment,poids) values (1,22,300);
insert into detailPlat(idPlat,idAliment,poids) values (1,10,350);
insert into detailPlat(idPlat,idAliment,poids) values (1,11,405);


insert into detailPlat(idPlat,idAliment,poids) values (2,5,200);
insert into detailPlat(idPlat,idAliment,poids) values (2,2,259);
insert into detailPlat(idPlat,idAliment,poids) values (2,6,100);
insert into detailPlat(idPlat,idAliment,poids) values (2,22,300);
insert into detailPlat(idPlat,idAliment,poids) values (2,17,350);
insert into detailPlat(idPlat,idAliment,poids) values (2,21,405);

insert into detailPlat(idPlat,idAliment,poids) values (3,4,200);
insert into detailPlat(idPlat,idAliment,poids) values (3,5,259);
insert into detailPlat(idPlat,idAliment,poids) values (3,8,100);
insert into detailPlat(idPlat,idAliment,poids) values (3,22,300);
insert into detailPlat(idPlat,idAliment,poids) values (3,19,350);
insert into detailPlat(idPlat,idAliment,poids) values (3,11,405);


insert into detailPlat(idPlat,idAliment,poids) values (4,10,200);
insert into detailPlat(idPlat,idAliment,poids) values (4,11,259);
insert into detailPlat(idPlat,idAliment,poids) values (4,3,100);
insert into detailPlat(idPlat,idAliment,poids) values (4,22,300);
insert into detailPlat(idPlat,idAliment,poids) values (4,20,350);
insert into detailPlat(idPlat,idAliment,poids) values (4,11,405);


insert into detailPlat(idPlat,idAliment,poids) values (5,1,200);
insert into detailPlat(idPlat,idAliment,poids) values (5,2,259);
insert into detailPlat(idPlat,idAliment,poids) values (5,5,100);
insert into detailPlat(idPlat,idAliment,poids) values (5,21,300);
insert into detailPlat(idPlat,idAliment,poids) values (5,15,350);
insert into detailPlat(idPlat,idAliment,poids) values (5,17,405);

INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (6, 10,200);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (6, 11,150);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (6, 19,300);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (6, 20,150);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (6, 12,150);

INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (7, 15, 100);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (7, 16, 120);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (7, 25, 100);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (7, 21, 120);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (7, 20, 220);


INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 1, 380);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 2, 490);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 3, 680);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 4, 590);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 5, 290);


INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 6, 180);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 7, 290);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 8, 180);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 9, 290);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (8, 10, 390);



INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (9, 11, 170);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (9, 12, 150);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (9, 13, 100);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (9, 14, 120);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (9, 15, 140);

INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (10, 19, 280);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (10, 20, 290);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (10, 21, 820);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (10, 17, 230);
INSERT INTO detailPlat (idPlat, idAliment, poids) VALUES (10, 18, 400);




--regime Alimentaire
insert into regime(idRegime,nomRegime,nombrejour,montant,variance) values(1,'Regime Mediteraneen',15,100,-5);
insert into regime(idRegime,nomRegime,nombrejour,montant,variance) values(2,'Regime Vegetarien',15,200,5);
insert into regime(idRegime,nomRegime,nombrejour,montant,variance) values(3,'Regime Cetogene',21,300,-5);
insert into regime(idRegime,nomRegime,nombrejour,montant,variance) values(4,'Regime sans gluten',21,400,5);
insert into regime(idRegime,nomRegime,nombrejour,montant,variance) values(5,'Regime flextarien',30,500,-5);
	
  
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,2,1,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,3,2,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,4,3,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,5,4,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,6,5,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,7,6,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,8,7,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,9,8,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,10,9,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,2,10,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,3,11,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,4,12,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,5,13,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,6,14,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(1,7,15,'12:30');
-- ============================================================================
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,2,1,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,3,2,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,4,3,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,5,4,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,6,5,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,7,6,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,8,7,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,9,8,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,10,9,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,2,10,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,3,11,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,4,12,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,5,13,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,6,14,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(2,7,15,'12:30');
-- ================================================================================
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,7,1,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,8,2,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,9,3,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,10,4,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,1,5,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,2,6,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,3,7,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,4,8,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,5,9,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,6,10,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,7,11,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,8,12,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,9,13,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,10,14,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,1,15,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,2,16,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,3,17,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,4,18,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,5,19,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,6,20,'12:30');
insert into detailRegime(idRegime,idPlat,NumeroDeJour,Heure) VALUES(3,7,21,'12:30');

insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,1,1,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,2,2,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,3,3,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,4,4,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,5,5,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,6,6,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,7,7,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,8,8,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,9,9,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,10,10,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,1,11,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,2,12,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,3,13,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,4,14,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,5,15,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,6,16,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,7,17,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,8,18,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,9,19,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,10,20,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (4,1,21,'12:30');

-- ===================================================================================

insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,1,1,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,2,2,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,3,3,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,4,4,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,5,5,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,6,6,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,7,7,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,8,8,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,9,9,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,10,10,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,1,11,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,2,12,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,3,13,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,4,14,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,5,15,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,6,16,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,7,17,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,8,18,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,9,19,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,10,20,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,1,21,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,2,22,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,3,23,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,4,24,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,5,25,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,6,26,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,7,27,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,8,28,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,9,29,'12:30');
insert into detailRegime (idRegime,idPlat,NumeroDeJour,Heure) values (5,10,30,'12:30');


insert exercice values ('ECX0001','jogin','minute');
insert exercice values ('ECX0002','pompe','fois');
insert exercice values ('ECX0003','squat','fois');
insert exercice values ('ECX0004','traction','fois');
insert exercice values ('ECX0005','etirement','minute');



insert code (idcode,montant) values ("COD0001",1000);
insert code (idcode,montant) values ("COD0002",2000);
insert code (idcode,montant) values ("COD0003",3000);
insert code (idcode,montant) values ("COD0004",4000);
insert code (idcode,montant) values ("COD0005",5000);
insert code (idcode,montant) values ("COD0006",6000);
insert code (idcode,montant) values ("COD0007",7000);
insert code (idcode,montant) values ("COD0008",8000);
insert code (idcode,montant) values ("COD0009",9000);
insert code (idcode,montant) values ("COD0010",10000);
insert code (idcode,montant) values ("COD0011",11000);
insert code (idcode,montant) values ("COD0012",12000);
insert code (idcode,montant) values ("COD0013",13000);
insert code (idcode,montant) values ("COD0014",14000);
insert code (idcode,montant) values ("COD0015",15000);

insert into Objectif(nomObjectif) values ('Augmenter poids');
insert into Objectif(nomObjectif) values ('Perdre poids');



insert into regimePhysique(nomregime,nombrejour,montant,variance)values('Pompes',15,150.5,-5);
insert into regimePhysique(nomregime,nombrejour,montant,variance)values('squat',15,125.5,5);
insert into regimePhysique(nomregime,nombrejour,montant,variance)values('etirements',30,160.5,-5);
insert into regimePhysique(nomregime,nombrejour,montant,variance)values('fessier',30,170.5,4);
insert into regimePhysique(nomregime,nombrejour,montant,variance)values('abdominaux',30,180.5,5);


insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0001",1,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0002",2,10,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0003",3,11,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0004",4,17,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0005",5,18,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0001",6,19,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0002",7,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0003",8,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0004",9,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0005",10,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0001",11,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0002",12,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0003",13,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0004",14,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(1,"ECX0005",15,13,'5:30');
-- ============================================================================================================
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0001",1,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0002",2,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0003",3,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0004",4,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0005",5,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0001",6,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0002",7,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0003",8,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0004",9,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0005",10,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0001",11,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0002",12,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0003",13,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0004",14,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(2,"ECX0005",15,13,'5:30');
-- ============================================================================================================
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0001",1,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0002",2,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0003",3,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0004",4,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0005",5,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0001",6,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0002",7,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0003",8,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0004",9,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0005",10,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0001",11,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0002",12,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0003",13,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0004",14,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0005",15,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0001",16,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0002",17,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0003",18,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0004",19,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0005",20,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0001",21,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0002",22,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0003",23,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0004",24,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0005",25,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0001",26,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0002",27,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0003",28,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0004",29,13,'5:30');
insert into detaille_regimeP (idRegime,idexerice,NumeroDeJour,quantiter,Heure)values(3,"ECX0005",30,13,'5:30');

insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0001",1,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0002",2,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",3,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0004",4,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0005",5,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0001",6,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0002",7,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",8,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0004",9,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0005",10,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0001",11,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0002",12,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",13,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0004",14,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0005",15,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0001",16,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0002",17,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",18,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0004",19,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0005",20,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0001",21,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0002",22,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",23,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0004",24,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0005",25,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0001",26,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0002",27,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",28,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",29,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (4,"ECX0003",30,13,"5:30");


insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0001",1,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0002",2,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",3,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0004",4,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0005",5,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0001",6,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0002",7,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",8,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0004",9,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0005",10,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0001",11,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0002",12,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",13,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0004",14,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0005",15,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0001",16,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0002",17,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",18,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0004",19,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0005",20,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0001",21,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0002",22,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",23,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0004",24,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0005",25,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0001",26,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0002",27,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",28,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",29,13,"5:30");
insert into  detaille_regimeP(idRegime,idexerice,NumeroDeJour,quantiter,Heure) values (5,"ECX0003",30,13,"5:30");
















