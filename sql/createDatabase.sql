DROP DATABASE IF EXISTS `classwave`;
CREATE DATABASE IF NOT EXISTS `classwave`;
USE `classwave`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users`(
    `idUser` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(16) NOT NULL UNIQUE,
    `passHash`  Varchar(60) NOT NULL,
    PRIMARY KEY (`idUser`)
);

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos`(
	`idCurso` INT NOT NULL AUTO_INCREMENT,
    `curso` ENUM('ASIX1','ASIX2','DAM1','DAM2'),
    PRIMARY KEY (`idCurso`)
);

INSERT INTO `users` (`username`,`passHash`) VALUES ('admin','$2y$10$e98C6dt3iErOAJu.yAomfeSTZ/natF6QVitJbs6jt6phg7fDGdnPu');