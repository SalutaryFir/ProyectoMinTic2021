-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `idempleado` INT NOT NULL,
  `nombre` VARCHAR(150) NOT NULL,
  `usuario` VARCHAR(20) NOT NULL,
  `password` VARCHAR(4) NOT NULL,
  PRIMARY KEY (`idempleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idcliente` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(15) NULL,
  `direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `idproducto` INT NOT NULL,
  `codigo` VARCHAR(50) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(20) NULL,
  `imagen` MEDIUMBLOB NULL,
  `idcategoria` INT NOT NULL,
  `idpresentacion` INT NOT NULL,
  PRIMARY KEY (`idproducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proveedor` (
  `idproveedor` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `direccion` VARCHAR(20) NULL,
  PRIMARY KEY (`idproveedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Venta` (
  `idventa` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `idEmpleado` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`idventa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ingreso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ingreso` (
  `idingreso` INT NOT NULL,
  `idProveedor` INT NOT NULL,
  `idtrabajador` INT NOT NULL,
  `fecha` DATETIME NOT NULL,
  PRIMARY KEY (`idingreso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`detalleIngreso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`detalleIngreso` (
  `iddetalleIngreso` INT NOT NULL,
  `idIngreso` INT NOT NULL,
  `idProducto` INT NOT NULL,
  `precio_compra` DOUBLE NOT NULL,
  `precio_venta` DOUBLE NOT NULL,
  `stock_inicial` INT NOT NULL,
  `stock_actual` INT NOT NULL,
  PRIMARY KEY (`iddetalleIngreso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`detalleVenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`detalleVenta` (
  `iddetalleVenta` INT NOT NULL,
  `idventa` INT NOT NULL,
  `iddetalleIngreso` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `precio_venta` DOUBLE NOT NULL,
  `descuento` DOUBLE NOT NULL,
  PRIMARY KEY (`iddetalleVenta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categoria` (
  `idcategoria` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(250) NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`presentacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`presentacion` (
  `idpresentacion` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(250) NULL,
  PRIMARY KEY (`idpresentacion`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
