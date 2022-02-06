DROP DATABASE IF EXISTS Lunch;
CREATE DATABASE Lunch;
USE Lunch;


DROP TABLE IF EXISTS recettes; 
 create table recettes(
IDR varchar(4)  not null,
 RName varchar(60) not null,
  origin varchar(30) not null,
  Accroname varchar(30) not null,
  lien varchar(200) not null,
 # primary key(IDR,RName));
  primary key(IDR,RName));
  
  DROP TABLE IF EXISTS Ingredients; 
 create table Ingredients(
nom  varchar(50) not null,
 quantity char(3) ,
  primary key(nom,quantity));
  
    DROP TABLE IF EXISTS Contenu; 
 create table Contenu(
CIDR  varchar(4) not null,
#CRName  varchar(60) not null,
 Cnom varchar(50) not null,
  quantity char(3) ,
  unity  char(3) ,
 primary key(CIDR, Cnom),
 #primary key(CRName, Cnom), 
foreign key (CIDR) references recettes(IDR),
 # foreign key (CRName) references recettes(RName),
foreign key (Cnom) references Ingredients(nom));

  
  
   DROP TABLE IF EXISTS dayss; 
 create table dayss(
days varchar(30) not null,
  primary key(days));
  
  DROP TABLE IF EXISTS DaysRecettes;
 create table DaysRecettes(
Ddays varchar(30) not null,
 #CRName varchar(60) not null,
 #CRName varchar(60) not null,
 CIDR  varchar(4) not null,
  primary key(Ddays,CIDR),
     foreign key (CIDR) references recettes(IDR),
   foreign key (Ddays) references dayss(days));

 DROP TABLE IF EXISTS Panier; 
 create table Panier(
nom_ingred  varchar(500) ,
  primary key(nom_ingred));