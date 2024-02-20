DROP DATABASE IF EXISTS `classwave`;
CREATE DATABASE IF NOT EXISTS `classwave`;
USE `classwave`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users`(
    `idUser` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(64) NOT NULL,
    `lastName` VARCHAR(64) NOT NULL,
    `mail` VARCHAR(64) NOT NULL UNIQUE,
    `passHash`  Varchar(60) NOT NULL,
    PRIMARY KEY (`idUser`)
);

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos`(
	`idCurso` INT NOT NULL AUTO_INCREMENT,
    `curso` ENUM('ASIX1','ASIX2','DAM1','DAM2'),
    PRIMARY KEY (`idCurso`)
);

DROP TABLE IF EXISTS `users_cursos`;
CREATE TABLE IF NOT EXISTS `users_cursos` (
    `idUser` INT NOT NULL,
    `idCurso` INT NOT NULL,
    PRIMARY KEY (`idUser`, `idCurso`),
    FOREIGN KEY (`idUser`) REFERENCES `users`(`idUser`)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (`idCurso`) REFERENCES `cursos`(`idCurso`)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

INSERT INTO `users` (`mail`,`passHash`) VALUES ('admin@classwave.com','$2y$10$e98C6dt3iErOAJu.yAomfeSTZ/natF6QVitJbs6jt6phg7fDGdnPu'
                                                'alvaro.queroa@educem.net','$2y$10$e98C6dt3iErOAJu.yAomfeSTZ/natF6QVitJbs6jt6phg7fDGdnPu'
                                                'xavi.garciam@educem.net','$2y$10$e98C6dt3iErOAJu.yAomfeSTZ/natF6QVitJbs6jt6phg7fDGdnPu'
                                                'blai.vallmitjanar@educem.net','$2y$10$e98C6dt3iErOAJu.yAomfeSTZ/natF6QVitJbs6jt6phg7fDGdnPu'                    
                                                );