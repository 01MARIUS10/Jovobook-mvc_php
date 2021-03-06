DROP TABLE IF EXISTS `articles`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `member`;
DROP TABLE IF EXISTS `message`;

DROP DATABASE IF EXISTS `mvc_database`;
CREATE DATABASE `mvc_database`;

USE `mvc_database`;
CREATE TABLE IF NOT EXISTS `article`
(
    `id_article` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `article_title` VARCHAR(65) NOT NULL DEFAULT " ",
    `article_content` TEXT NOT NULL ,
    `article_date` DATETIME DEFAULT NOW(),
    `article_authorId` INT NOT NULL DEFAULT 1,
    `article_categorieId` INT NOT NULL DEFAULT 1
);

CREATE TABLE IF NOT EXISTS `categorie`
(
    `id_categorie` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `categorie_name` VARCHAR(65) NOT NULL
);

CREATE TABLE IF NOT EXISTS `member`
(
    `id_member` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `member_firstname` VARCHAR(65) NOT NULL, 
	`member_lastname` VARCHAR(65) NOT NULL, 
	`member_pseudo` VARCHAR(20) NOT NULL,
    `member_birthdate` DATE NOT NULL, 
	`member_tel` CHAR(10)
);
CREATE TABLE IF NOT EXISTS `message`
(
    `id_message` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `message_content` VARCHAR(65) NOT NULL, 
    `message_date` DATETIME DEFAULT NOW(),
	`id_from` INT  NOT NULL 
);



INSERT INTO `categorie`(`categorie_name`) 
VALUES ('blague'),('etude'),('meditation'),('informatif'),('opinion');

INSERT INTO `article`(`article_title`,`article_content`,`article_authorId`,`article_categorieId`)
VALUES 
('First publish','Voici mon premier publication categorie 3 encore implementer dans la requete brute de mysql',2,3),
('an other publish','Voici une autre publication categorie 3 encore implementer dans la requete brute de mysql',3,3),
('an other publish','Voici une je mexerce categorie 4 encore implementer dans la requete brute de mysql',4,4),
('le buz du siecle',"aujourd'hui categorie 2 ,encore des personnes ont ete kidnapper puis relacher et aucun hypothese n'est formellement logique",3,2 );

INSERT INTO `message`(`message_content`,`id_from`)
VALUES 
('kaiza2 dahol prom',1),
('kaiza2 less',2),
('de aona hono',3),
('zao manandrakandrana zao eh',1),
('enganie mba ande ty ',1),
('ambony fona less ny moral dady eh',3),
('merci prom',1);

INSERT INTO `member`(`member_firstname`,`member_lastname`,`member_pseudo`,`member_birthdate`,`member_tel`)
VALUES 
('John Christopher', 'DEPP II','Cox', '1963-06-09', '0606060606'),
('Cyril', 'HANOUNA','Tirilira', '1974-09-23', '0611220044'),
('Adrien', 'NOUGARET','Melvin', '1990-03-01', '2309457112'),
('Jaoued ', 'DAOUKI','Mangala devant' ,'1987-08-18', '0612345678'),
('Kenny ', 'VANDERBECKEN','Prezidant', '1420-10-31', '0612345678');
