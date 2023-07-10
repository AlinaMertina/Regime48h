insert INTO genres(nom) VALUES('Homme');
insert INTO genres(nom) VALUES('Femme');

insert into utilisateurs (idutilisateurs,nom,mdp)  values ('UTL00001','Mertina',"mertina44");

INSERT INTO utilisateurs (id, nom, taille, mail, idgenre, poids)
VALUES
  (1, 'John', 180, 'John@gmail.com', 1, 75),
  (2, 'Jane ', 165, 'Jane@gmail.com', 2, 62),
  (3, 'Alex', 175, 'Alex@gmail.com', 1, 80),
  (4, 'noti ', 155, 'noti@gmail.com', 2, 62),
  (5, 'tiavina', 185, 'tiavina@gmail.com', 1, 90);


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
insert into plat(idPlat,nomPlat) values(2,'Saumon grille');
insert into plat(idPlat,nomPlat) values(3,'Poulets aux legumes sautes');
insert into plat(idPlat,nomPlat) values(4,'Quinoa aux legumes');
insert into plat(idPlat,nomPlat) values(5,'Salade de poulet grilles');
insert into plat(idPlat,nomPlat) values(6,'Poisson en papillote');
insert into plat(idPlat,nomPlat) values(7,'Tofu aux legumes sautes');
insert into plat(idPlat,nomPlat) values(8,'Soupe legumes');
insert into plat(idPlat,nomPlat) values(9,'Salade de quiunoa et legumes rotis');
insert into plat(idPlat,nomPlat) values(10,'Bowi de legumes grilles avec riz complet');


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
insert into regime(idRegime,nomRegime,nombrejour) values(1,'Regime Mediteraneen',15);
insert into regime(idRegime,nomRegime,nombrejour) values(2,'Regime Vegetarien',15);
insert into regime(idRegime,nomRegime,nombrejour) values(3,'Regime Cetogene',21);
insert into regime(idRegime,nomRegime,nombrejour) values(4,'Regime sans gluten',21);
insert into regime(idRegime,nomRegime,nombrejour) values(5,'Regime flextarien',30);
	
  
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











