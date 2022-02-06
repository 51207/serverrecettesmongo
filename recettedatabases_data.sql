SET SQL_SAFE_UPDATES=0;

#DELETE FROM Mesure;
#DELETE FROM Contenu;
#DELETE FROM DaysRecettes;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
DELETE FROM recettes;
DELETE FROM Ingredients ;
DELETE FROM Dayss;
DELETE FROM Panier;
DELETE FROM Contenu;
DELETE FROM DaysRecettes;
SET SQL_SAFE_UPDATES=1;
#recettes

INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('101','Courgettes marinées','Français','CM','CourgMar.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('102','Purée de Pomme de terre','Français','PDPDT','PDPDT.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('103','Pomme de terre grenailles confits au four','Français','PDTGCAT','PDTGR.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('104','Poulet à l ancienne','Français','PAL','PALA.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('105','patates bravas','Espagnole','PB','PBV.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('106','Les pâtes au saumon fumé','Italienne','LPASF','PSF.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('107','La recettes libanaise des falafels express','Libanaise','LRLDFE','LFEX.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('108','La recette de la polenta au fromage','Italienne','LRDLPAF','RPF.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('109','Gratin de courgettes','farançais','GDC','GTDC.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('110','Feuilletés tomates et chèvre','français','FTEC','FTCH.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('111','Sushis au thermomix ','japonaise','SAT','STE.png');
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('112','Pâtes à la carbonara','Italienne','PALC','PC.png');
#jajoute une recette qu'on pourrait tester nos modification
INSERT INTO recettes (IDR,Rname,origin,Accroname,lien)
VALUES ('113','Riz gras','Bresilienne','RG','RG.png');


#ingredients

#sushis
INSERT INTO Ingredients (nom,quantity)
VALUES ('Riz pour sushi','300');
INSERT INTO Ingredients (nom,quantity)
VALUES ('eau','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('Vinaigre de riz','50');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuillère de sel','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('Cuillere de sucre en poudre','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('concombre','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('avocats','2');

#carbonara
INSERT INTO Ingredients (nom,quantity)
VALUES ('de pâtes','500');
INSERT INTO Ingredients (nom,quantity)
VALUES ('pincée de sel','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('jaune d oeufs','3');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de lardons','250');
INSERT INTO Ingredients (nom,quantity)
VALUES ('oignon','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de crème fraiche','50');
#tomate et chèvre
INSERT INTO Ingredients (nom,quantity)
VALUES ('pâtes feuilletés','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('bûchette de fromage de chèvre frais','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('oigon blanc','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('jaune d oeuf','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('tomates','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('thym séché','1');

#gratin de courgettes
INSERT INTO Ingredients (nom,quantity)
VALUES ('courgettes','3');
INSERT INTO Ingredients (nom,quantity)
VALUES ('oignons','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('gousse d ail','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de gruyère rapé','100');
INSERT INTO Ingredients (nom,quantity)
VALUES ('oeufs','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuillère à soupe de crème fraiche','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('noisette ','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('du sel & poivre ','');

# recette de la polenta au fromage 
INSERT INTO Ingredients (nom,quantity)
VALUES (' d eau','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuillère à soupe de sel','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de semoule de maîs à gros grain','270');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de semoule de mais fine','270');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de beurre','30');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de fromage','480');


#recette libanaise
INSERT INTO Ingredients (nom,quantity)
VALUES (' de pois chiches en conserve','400');
INSERT INTO Ingredients (nom,quantity)
VALUES ('oeuf','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('oignon','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('fousse d ail ','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('botte de persil plat','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuillère de cumin','1');

/*INSERT INTO Ingredients (nom,quantity)
VALUES ('sel et poivre','');
*/

#less pates au saumon
INSERT INTO Ingredients (nom,quantity)
VALUES (' boules de tagliatelles','10');
INSERT INTO Ingredients (nom,quantity)
VALUES ('tranches de saumon','2');
INSERT INTO Ingredients (nom,quantity)
VALUES (' de crème fraiche','20');
INSERT INTO Ingredients (nom,quantity)
VALUES ('du ciboullettes',' ');

#poulet à l'ancienne
INSERT INTO Ingredients (nom,quantity)
VALUES ('filets de pulet fermier','4');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de champignons','400');
INSERT INTO Ingredients (nom,quantity)
VALUES (' un oignon',' ');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de lardon','150 ');
INSERT INTO Ingredients (nom,quantity)
VALUES (' brin de persil ','3');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de vin blanc ','200');
INSERT INTO Ingredients (nom,quantity)
VALUES (' de crème fraiche','150');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuillère à soupe d huile','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('sel et poivres',' ');



#patate bravas
INSERT INTO Ingredients (nom,quantity)
VALUES ('de pommes de terre','700');
INSERT INTO Ingredients (nom,quantity)
VALUES (' de poivron rouge','1');
INSERT INTO Ingredients (nom,quantity)
VALUES (' tomates bien mûres','5');
INSERT INTO Ingredients (nom,quantity)
VALUES ('oignon doux','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cassonade',' ');
INSERT INTO Ingredients (nom,quantity)
VALUES ('du vinaigre de Xerès',' ');
INSERT INTO Ingredients (nom,quantity)
VALUES (' piment fort ou doux','500');
INSERT INTO Ingredients (nom,quantity)
VALUES (' feuille de laire','1');

#pomme de terre grenaille
INSERT INTO Ingredients (nom,quantity)
VALUES ('de pommes de terre','600');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuiellère d huile d olive','6');
INSERT INTO Ingredients (nom,quantity)
VALUES ('gousse d ail','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('du gros sel',' ');
INSERT INTO Ingredients (nom,quantity)
VALUES ('herbes de provence et persil',' ');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuillère de cumin','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('cuillère à soupe de paprika','1');

#puree de pomme de terre
INSERT INTO Ingredients (nom,quantity)
VALUES ('de pommes de terre','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de lait','15');
INSERT INTO Ingredients (nom,quantity)
VALUES ('de beurre demi-sel','70');
INSERT INTO Ingredients (nom,quantity)
VALUES ('Noix de muscade',' ');

#courgette marinée
INSERT INTO Ingredients (nom,quantity)
VALUES ('grosse courgette','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('grousse d ails','2');
INSERT INTO Ingredients (nom,quantity)
VALUES ('bouquet de basilic','1');
INSERT INTO Ingredients (nom,quantity)
VALUES ('piment','1');


#riz gras
INSERT INTO Ingredients (nom,quantity)
VALUES ('carrotes de pâtes','500');





#contenu
#courgette marinée
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('101','grosse courgette','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('101','grousse d ails','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('101','bouquet de basilic','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('101','piment','1',' ');

/*INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Courgettes marinées','grosse courgette','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Courgettes marinées','grousse d ails','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Courgettes marinées','bouquet de basilic','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Courgettes marinées','piment','1',' ');
*/



#Purée de pomme de terre

INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('102','de pommes de terre','1','kg');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('102','de lait','15','cl');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('102','de beurre demi-sel','70','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('102','Noix de muscade',' ',' ');

/*
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Purée de Pomme de terre','de pommes de terre','1','kg');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Purée de Pomme de terre','de lait','15','cl');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Purée de Pomme de terre','de beurre demi-sel','70','g');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Purée de Pomme de terre','Noix de muscade',' ',' ');
*/


#attention pour le sel & poivre
#INSERT INTO Contenu(CIDR,Cnom)
#VALUES ('102','sel & poivre');

#celui qu'on a mis en commentaire
#Pomme de terre grenailles
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('103','de pommes de terre','600','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('103','cuiellère d huile d olive','6',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('103','du gousse d ail ','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('103','herbes de provence et persil',' ',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('103','cuillère de cumin','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('103','cuillère à soupe de paprika','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('103','du gros sel',' ',' ');

/*
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Pomme de terre grenailles confits au four','de pommes de terre','600','g');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Pomme de terre grenailles confits au four','cuiellère d huile d olive','6',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Pomme de terre grenailles confits au four','du gousse d ail ','2',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Pomme de terre grenailles confits au four','herbes de provence et persil',' ',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Pomme de terre grenailles confits au four','cuillère de cumin','2',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Pomme de terre grenailles confits au four','cuillère à soupe de paprika','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Pomme de terre grenailles confits au four','du gros sel',' ',' ');
*/


#celui quon a mis en commentaire
#Poulet à l'ancienne
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104','filets de pulet fermier','4',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104','de champignons','400','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104',' un oignon','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104','de lardon','150','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104',' brin de persil ','3',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104','de vin blanc ','200','ml' );
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104',' de crème fraiche','150','ml');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104','sel et poivres',' ',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('104','cuillère à soupe d huile','1',' ');











/*
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne','filets de pulet fermier','4',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne','de champignons','400','g');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne',' un oignon','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne','de lardon','150','g');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne',' brin de persil ','3',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne','de vin blanc ','200','ml' );
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne',' de crème fraiche','150','ml');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne','sel et poivres',' ',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('Poulet à l ancienne','cuillère à soupe d huile','1',' ');
*/
#Patate bravas:
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105','de pommes de terre','700','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105',' de poivron rouge','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105',' tomates bien mûres','5',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105','oignon doux','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105','cassonade',' ',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105','du vinaigre de Xerès',' ',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105',' piment fort ou doux','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105',' feuille de laire','1',' ');
#attention a ce sel
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('105',' sel & poivre',' ',' ');
/*
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas','de pommes de terre','700','g');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas',' de poivron rouge','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas',' tomates bien mûres','5',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas','oignon doux','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas','cassonade',' ',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas','du vinaigre de Xerès',' ',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas',' piment fort ou doux','1',' ');
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas',' feuille de laire','1',' ');
#attention a ce sel
INSERT INTO Contenu(CRName,Cnom,quantity,unity)
VALUES ('patates bravas',' sel & poivre',' ',' ');
*/

#les pâtes au saumon fumé
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('106',' boules de tagliatelles','10',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('106','tranches de saumon','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('106',' de crème fraiche','20','cl');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('106','du ciboullettes',' ',' ');
/*
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('Les pâtes au saumon fumé',' boules de tagliatelles','10',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('Les pâtes au saumon fumé','tranches de saumon','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('Les pâtes au saumon fumé',' de crème fraiche','20','cl');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('Les pâtes au saumon fumé','du ciboullettes',' ',' ');
*/


#libanaise:
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('107',' de pois chiches en conserve','400','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('107','oeuf','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('107','oignon','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('107','gousse d ail ','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('107','botte de persil plat','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('107','cuillère de cumin','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('107','sel & poivre',' ',' ');

#polenta
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('108',' d eau','2','l');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('108','cuillère à soupe de sel','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('108','de semoule de maîs à gros grain','270','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('108','de semoule de mais fine','270','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('108','de beurre','30','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('108','de fromage','480','g');

#gratin de courgettes
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','courgettes','3',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','oignons','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','gousse d ail','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','de gruyère rapé','100','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','oeufs','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','cuillère à soupe de crème fraiche','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','noisette ','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('109','du sel & poivre ',' ',' ');

#tomate et chèvre
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('110','thym séché','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('110','tomates','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('110','jaune d oeuf','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('110','oigon blanc','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('110','bûchette de fromage de chèvre frais','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('110','pâtes feuilletés','2',' ');

#sushis
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('111','avocats','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('111','concombre','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('111','Cuillere de sucre en poudre','2',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('111','cuillère de sel','1 ', ' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('111','Vinaigre de riz','50','ml');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('111','eau','1','l');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('111','Riz pour sushi','300','g');

#carbonade
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('112','de crème fraiche','50','cl');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('112','oignon','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('112','de lardons','250','g');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('112','jaune d oeufs','3',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('112','pincée de sel','1',' ');
INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('112','de pâtes','500','g');


INSERT INTO Contenu(CIDR,Cnom,quantity,unity)
VALUES ('113','carrotes de pâtes','500','g');

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES=1;
#DAYS
INSERT INTO Dayss(days)
Values('Lundi');
INSERT INTO Dayss(days)
Values('Mardi');
INSERT INTO Dayss(days)
Values('Mercredi');
INSERT INTO Dayss(days)
Values('Jeudi');
INSERT INTO Dayss(days)
Values('Vendredi');
INSERT INTO Dayss(days)
Values('Samedi');
INSERT INTO Dayss(days)
Values('Dimanche');


SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES=1;

#daysrecettes
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Lundi','101');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Lundi','102');


INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Mardi','104');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Mardi','105');

INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Mercredi','106');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Mercredi','107');

INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Jeudi','108');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Jeudi','109');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Jeudi','110');


INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Vendredi','102');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Vendredi','107');

INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Samedi','103');


#INSERT INTO DaysRecettes(Ddays,CIDR)
#Values('Dimanche','111');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Dimanche','112');
INSERT INTO DaysRecettes(Ddays,CIDR)
Values('Dimanche','113');


#panier
INSERT INTO Panier(nom_ingred)
Values('du Riz pour sushi');


/*
#Mesure
#carbonade
INSERT INTO Mesure(Cnom,unit)
VALUES ('de crème fraiche','cl');
INSERT INTO Mesure(Cnom,unit)
VALUES ('oignon',' ');
INSERT INTO Mesure(Cnom,unit)
VALUES ('de lardons','g');
INSERT INTO Mesure(Cnom,unit)
VALUES ('jaune d oeufs',' ');
INSERT INTO Mesure(Cnom,unit)
VALUES ('pincée de sel','');
INSERT INTO Mesure(Cnom,unit)
VALUES ('de pâtes','g');
#sushis
INSERT INTO Mesure(Cnom,unit)
VALUES ('avocats',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('Cuillere de sucre en poudre',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cuillère de sel',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('Vinaigre de riz','ml');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('eau','l');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('Riz pour sushi','g');

#tomate et chèvre
INSERT INTO Mesure(Cnom,unit)
VALUES ('thym séché',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('tomates',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('jaune d oeuf',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('oigon blanc',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('bûchette de fromage de chèvre frais',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('pâtes feuilletés',' ');

#gratin de courgettes
INSERT INTO Mesure(Cnom,unit)
VALUES ('du sel & poivre ',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('noisette ',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cuillère à soupe de crème fraiche',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('oeufs',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de gruyère rapé','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('gousse d ail',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('oignons',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('courgettes',' ');

#polenta
INSERT INTO Mesure(Cnom,unit)
VALUES (' d eau','l');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cuillère à soupe de sel',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de semoule de maîs à gros grain','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de semoule de mais fine','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de beurre','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de fromage','g');

#libanaise:
INSERT INTO Mesure(Cnom,unit)
VALUES (' de pois chiches en conserve','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('oeuf',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('oignon','e');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('fousse d ail ',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('botte de persil plat',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cuillère de cumin',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('sel & poivre',' ');

#les pâtes au saumon fumé
INSERT INTO Mesure(Cnom,unit)
VALUES (' boules de tagliatelles',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('tranches de saumon',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' de crème fraiche','cl');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('du ciboullettes',' ');

#Patate bravas:
INSERT INTO Mesure(Cnom,unit)
VALUES ('de pommes de terre','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' de poivron rouge',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' tomates bien mûres',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('oignon doux',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cassonade',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('du vinaigre de Xerès',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' piment fort ou doux','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' feuille de laire',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' sel & poivre',' ');

#Poulet à l'ancienne
INSERT INTO Mesure(Cnom,unit)
VALUES ('filets de pulet fermier',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de champignons','g');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' un oignon','');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de lardon','g');
INSERT INTO Mesure(Cnom,unit)
VALUES (' brin de persil ',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de vin blanc ','ml');
INSERT INTO  Mesure(Cnom,unit)
VALUES (' de crème fraiche','ml');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('sel et poivres',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cuillère à soupe d huile',' ');


#Pomme de terre grenailles
INSERT INTO Mesure(Cnom,unit)
VALUES ('de pommes de terre','gr');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cuiellère d huile d olive',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('du gros sel',' ');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('herbes de provence et persil',' ');
INSERT INTO Mesure(Cnom,unit)
VALUES ('cuillère de cumin','une');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('cuillère à soupe de paprika','ml');

#purée de pomme de terre:
INSERT INTO Mesure(Cnom,unit)
VALUES ('de pommes de terre','kg');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de lait','cl');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('de beurre demi-sel',' g');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('Noix de muscade',' ');

#courgette marinée:
INSERT INTO Mesure(Cnom,unit)
VALUES ('grosse courgette','1');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('grousse d ails','2');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('bouquet de basilic','1');
INSERT INTO  Mesure(Cnom,unit)
VALUES ('piment','1');

*/
#requetes

/*select distinct quantity,unity,Cnom 
from  Contenu  
where CIDR='112';
*/
