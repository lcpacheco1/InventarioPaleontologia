-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema paleontologia
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `paleontologia` ;

-- -----------------------------------------------------
-- Schema paleontologia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `paleontologia` DEFAULT CHARACTER SET utf8 ;
USE `paleontologia` ;

-- -----------------------------------------------------
-- Table `paleontologia`.`Provincia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Provincia` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Provincia` (
  `idProvincia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idProvincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Canton`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Canton` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Canton` (
  `idCanton` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `Provincia_idProvincia` INT NOT NULL,
  PRIMARY KEY (`idCanton`, `Provincia_idProvincia`),
  INDEX `fk_Canton_Provincia1_idx` (`Provincia_idProvincia` ASC),
  CONSTRAINT `fk_Canton_Provincia1`
    FOREIGN KEY (`Provincia_idProvincia`)
    REFERENCES `paleontologia`.`Provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Parroquia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Parroquia` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Parroquia` (
  `idParroquia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `tipo` VARCHAR(15) NULL,
  `Canton_idCanton` INT NOT NULL,
  PRIMARY KEY (`idParroquia`, `Canton_idCanton`),
  INDEX `fk_Parroquia_Canton1_idx` (`Canton_idCanton` ASC),
  CONSTRAINT `fk_Parroquia_Canton1`
    FOREIGN KEY (`Canton_idCanton`)
    REFERENCES `paleontologia`.`Canton` (`idCanton`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Coleccion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Coleccion` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Coleccion` (
  `idColeccion` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `propietario` VARCHAR(50) NULL,
  `control` VARCHAR(45) NULL,
  `curador` VARCHAR(50) NULL,
  PRIMARY KEY (`idColeccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Proyecto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Proyecto` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Proyecto` (
  `idProyecto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `era` VARCHAR(60) NULL,
  `preiodo` VARCHAR(50) NULL,
  `epoca` VARCHAR(45) NOT NULL,
  `cronologia` VARCHAR(50) NULL,
  PRIMARY KEY (`idProyecto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Reino`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Reino` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Reino` (
  `idReino` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  PRIMARY KEY (`idReino`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Filo-Division`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Filo-Division` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Filo-Division` (
  `idFilo-Division` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `Reino_idReino` INT NOT NULL,
  PRIMARY KEY (`idFilo-Division`, `Reino_idReino`),
  INDEX `fk_Filo-Division_Reino1_idx` (`Reino_idReino` ASC),
  CONSTRAINT `fk_Filo-Division_Reino1`
    FOREIGN KEY (`Reino_idReino`)
    REFERENCES `paleontologia`.`Reino` (`idReino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Clase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Clase` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Clase` (
  `idClase` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `Filo-Division_idFilo-Division` INT NOT NULL,
  PRIMARY KEY (`idClase`, `Filo-Division_idFilo-Division`),
  INDEX `fk_Clase_Filo-Division1_idx` (`Filo-Division_idFilo-Division` ASC),
  CONSTRAINT `fk_Clase_Filo-Division1`
    FOREIGN KEY (`Filo-Division_idFilo-Division`)
    REFERENCES `paleontologia`.`Filo-Division` (`idFilo-Division`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Subclase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Subclase` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Subclase` (
  `idSubclase` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NULL,
  `Clase_idClase` INT NOT NULL,
  PRIMARY KEY (`idSubclase`, `Clase_idClase`),
  INDEX `fk_Subclase_Clase1_idx` (`Clase_idClase` ASC),
  CONSTRAINT `fk_Subclase_Clase1`
    FOREIGN KEY (`Clase_idClase`)
    REFERENCES `paleontologia`.`Clase` (`idClase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Orden`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Orden` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Orden` (
  `idOrden` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `Clase_idClase` INT NOT NULL,
  PRIMARY KEY (`idOrden`, `Clase_idClase`),
  INDEX `fk_Orden_Clase1_idx` (`Clase_idClase` ASC),
  CONSTRAINT `fk_Orden_Clase1`
    FOREIGN KEY (`Clase_idClase`)
    REFERENCES `paleontologia`.`Clase` (`idClase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`SuperFamilia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`SuperFamilia` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`SuperFamilia` (
  `idSuperFamilia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `Orden_idOrden` INT NOT NULL,
  PRIMARY KEY (`idSuperFamilia`, `Orden_idOrden`),
  INDEX `fk_SuperFamilia_Orden1_idx` (`Orden_idOrden` ASC),
  CONSTRAINT `fk_SuperFamilia_Orden1`
    FOREIGN KEY (`Orden_idOrden`)
    REFERENCES `paleontologia`.`Orden` (`idOrden`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Familia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Familia` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Familia` (
  `idFamilia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `SuperFamilia_idSuperFamilia` INT NOT NULL,
  PRIMARY KEY (`idFamilia`, `SuperFamilia_idSuperFamilia`),
  INDEX `fk_Familia_SuperFamilia1_idx` (`SuperFamilia_idSuperFamilia` ASC),
  CONSTRAINT `fk_Familia_SuperFamilia1`
    FOREIGN KEY (`SuperFamilia_idSuperFamilia`)
    REFERENCES `paleontologia`.`SuperFamilia` (`idSuperFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`SubFamilia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`SubFamilia` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`SubFamilia` (
  `idSubFamilia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `Familia_idFamilia` INT NOT NULL,
  PRIMARY KEY (`idSubFamilia`, `Familia_idFamilia`),
  INDEX `fk_SubFamilia_Familia1_idx` (`Familia_idFamilia` ASC),
  CONSTRAINT `fk_SubFamilia_Familia1`
    FOREIGN KEY (`Familia_idFamilia`)
    REFERENCES `paleontologia`.`Familia` (`idFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Genero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Genero` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Genero` (
  `idGenero` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `SuperFamilia_idSuperFamilia` INT NOT NULL,
  PRIMARY KEY (`idGenero`, `SuperFamilia_idSuperFamilia`),
  INDEX `fk_Genero_SuperFamilia1_idx` (`SuperFamilia_idSuperFamilia` ASC),
  CONSTRAINT `fk_Genero_SuperFamilia1`
    FOREIGN KEY (`SuperFamilia_idSuperFamilia`)
    REFERENCES `paleontologia`.`SuperFamilia` (`idSuperFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`TipoReg`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`TipoReg` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`TipoReg` (
  `idTipoReg` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  PRIMARY KEY (`idTipoReg`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`RegiEspe`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`RegiEspe` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`RegiEspe` (
  `idRegiEspe` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `TipoReg_idTipoReg` INT NOT NULL,
  PRIMARY KEY (`idRegiEspe`, `TipoReg_idTipoReg`),
  INDEX `fk_RegiEspe_TipoReg1_idx` (`TipoReg_idTipoReg` ASC),
  CONSTRAINT `fk_RegiEspe_TipoReg1`
    FOREIGN KEY (`TipoReg_idTipoReg`)
    REFERENCES `paleontologia`.`TipoReg` (`idTipoReg`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Localizacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Localizacion` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Localizacion` (
  `idLocalizacion` INT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(100) NULL,
  `numero` INT NULL,
  `UTMeste` INT NULL,
  `UTMnorte` INT NULL,
  `Parroquia_idParroquia` INT NOT NULL,
  PRIMARY KEY (`idLocalizacion`, `Parroquia_idParroquia`),
  INDEX `fk_Localizacion_Parroquia1_idx` (`Parroquia_idParroquia` ASC),
  CONSTRAINT `fk_Localizacion_Parroquia1`
    FOREIGN KEY (`Parroquia_idParroquia`)
    REFERENCES `paleontologia`.`Parroquia` (`idParroquia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`SubOrden`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`SubOrden` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`SubOrden` (
  `idSubOrden` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `Orden_idOrden` INT NOT NULL,
  PRIMARY KEY (`idSubOrden`, `Orden_idOrden`),
  INDEX `fk_SubOrden_Orden1_idx` (`Orden_idOrden` ASC),
  CONSTRAINT `fk_SubOrden_Orden1`
    FOREIGN KEY (`Orden_idOrden`)
    REFERENCES `paleontologia`.`Orden` (`idOrden`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paleontologia`.`Fosil`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paleontologia`.`Fosil` ;

CREATE TABLE IF NOT EXISTS `paleontologia`.`Fosil` (
  `idFosil` INT NOT NULL AUTO_INCREMENT,
  `largo` DECIMAL NULL,
  `ancho` DECIMAL NULL,
  `diametro` DECIMAL NULL,
  `espesor` DECIMAL NULL,
  `peso` DECIMAL NULL,
  `estadoConser` VARCHAR(50) NULL,
  `registrador` VARCHAR(50) NULL,
  `fechaRegistro` DATE NULL,
  `descripcionGeologica` VARCHAR(1000) NULL,
  `entidadRevisadora` VARCHAR(50) NULL,
  `fechaRevision` DATE NULL,
  `Coleccion_idColeccion` INT NOT NULL,
  `Proyecto_idProyecto` INT NOT NULL,
  `Subclase_idSubclase` INT NOT NULL,
  `SubFamilia_idSubFamilia` INT NOT NULL,
  `Genero_idGenero` INT NOT NULL,
  `RegiEspe_idRegiEspe` INT NOT NULL,
  `Localizacion_idLocalizacion` INT NOT NULL,
  `SubOrden_idSubOrden` INT NOT NULL,
  PRIMARY KEY (`idFosil`, `Coleccion_idColeccion`, `Proyecto_idProyecto`, `Subclase_idSubclase`, `SubFamilia_idSubFamilia`, `Genero_idGenero`, `RegiEspe_idRegiEspe`, `Localizacion_idLocalizacion`, `SubOrden_idSubOrden`),
  INDEX `fk_Fosil_Coleccion1_idx` (`Coleccion_idColeccion` ASC),
  INDEX `fk_Fosil_Proyecto1_idx` (`Proyecto_idProyecto` ASC),
  INDEX `fk_Fosil_Subclase1_idx` (`Subclase_idSubclase` ASC),
  INDEX `fk_Fosil_SubFamilia1_idx` (`SubFamilia_idSubFamilia` ASC),
  INDEX `fk_Fosil_Genero1_idx` (`Genero_idGenero` ASC),
  INDEX `fk_Fosil_RegiEspe1_idx` (`RegiEspe_idRegiEspe` ASC),
  INDEX `fk_Fosil_Localizacion1_idx` (`Localizacion_idLocalizacion` ASC),
  INDEX `fk_Fosil_SubOrden1_idx` (`SubOrden_idSubOrden` ASC),
  CONSTRAINT `fk_Fosil_Coleccion1`
    FOREIGN KEY (`Coleccion_idColeccion`)
    REFERENCES `paleontologia`.`Coleccion` (`idColeccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fosil_Proyecto1`
    FOREIGN KEY (`Proyecto_idProyecto`)
    REFERENCES `paleontologia`.`Proyecto` (`idProyecto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fosil_Subclase1`
    FOREIGN KEY (`Subclase_idSubclase`)
    REFERENCES `paleontologia`.`Subclase` (`idSubclase`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fosil_SubFamilia1`
    FOREIGN KEY (`SubFamilia_idSubFamilia`)
    REFERENCES `paleontologia`.`SubFamilia` (`idSubFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fosil_Genero1`
    FOREIGN KEY (`Genero_idGenero`)
    REFERENCES `paleontologia`.`Genero` (`idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fosil_RegiEspe1`
    FOREIGN KEY (`RegiEspe_idRegiEspe`)
    REFERENCES `paleontologia`.`RegiEspe` (`idRegiEspe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fosil_Localizacion1`
    FOREIGN KEY (`Localizacion_idLocalizacion`)
    REFERENCES `paleontologia`.`Localizacion` (`idLocalizacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fosil_SubOrden1`
    FOREIGN KEY (`SubOrden_idSubOrden`)
    REFERENCES `paleontologia`.`SubOrden` (`idSubOrden`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
