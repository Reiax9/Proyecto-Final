DROP DATABASE IF EXISTS `classwave`;
CREATE DATABASE IF NOT EXISTS `classwave`;
USE `classwave`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users`(
    `idUser` INT NOT NULL AUTO_INCREMENT,
    `mail`  VARCHAR(40) NOT NULL UNIQUE,
    `username` VARCHAR(16) NOT NULL UNIQUE,
    `passHash`  Varchar(60) NOT NULL,
    `userFirstName` VARCHAR(60) NOT NULL,
    `userLastName` VARCHAR(120) NOT NULL,
    `creationDate` DATETIME NOT NULL,
    `removeDate` DATETIME NOT NULL,
    `lastSignIn` DATETIME NOT NULL,
    `active` TINYINT(1) NOT NULL,
    PRIMARY KEY (`idUser`)
);

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos`(
	`idCurso` INT NOT NULL AUTO_INCREMENT,
    `curso` ENUM('ASIX1','ASIX2','DAM1','DAM2'),
    PRIMARY KEY (`idCurso`)
);