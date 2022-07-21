-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema proyecto_integrador
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyecto_integrador
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyecto_integrador` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `proyecto_integrador` ;

-- -----------------------------------------------------
-- Table `proyecto_integrador`.`cities`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`cities` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`cities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'este campo contendra las ciudades en las que viven cada estudiante ';


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`users` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `identification_number` VARCHAR(50) NOT NULL,
  `comp_name` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `age` FLOAT NOT NULL,
  `email` VARCHAR(70) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `bith_date` DATE NOT NULL,
  `contac_number` VARCHAR(15) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `photo` VARCHAR(400) NOT NULL,
  `description` VARCHAR(500) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'este campo contendra los usuarios ';


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`addresses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`addresses` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`addresses` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(45) NOT NULL,
  `city_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `address_users_fkey_idx` (`user_id` ASC) VISIBLE,
  INDEX `address_cities_fkey_idx` (`city_id` ASC) VISIBLE,
  CONSTRAINT `address_cities_fkey`
    FOREIGN KEY (`city_id`)
    REFERENCES `proyecto_integrador`.`cities` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `address_users_fkey`
    FOREIGN KEY (`user_id`)
    REFERENCES `proyecto_integrador`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`careers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`careers` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`careers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `code_cohort` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `description` VARCHAR(400) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `image` VARCHAR(400) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'este campo tiene como objetivo almacenar las carreras brindadas ';


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`modules`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`modules` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`modules` (
  `id` INT NOT NULL,
  `name` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `duration` FLOAT NOT NULL COMMENT 'En este campo se dijitara el numero de semanas que dura cada modulo',
  `description` VARCHAR(500) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`careers_module`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`careers_module` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`careers_module` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `career_id` INT NOT NULL DEFAULT '0',
  `module_id` INT NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  INDEX `fk_career_id_careers_module_idx` (`career_id` ASC) VISIBLE,
  INDEX `fk_module_id_careers_module_idx` (`module_id` ASC) VISIBLE,
  CONSTRAINT `fk_career_id_careers_module`
    FOREIGN KEY (`career_id`)
    REFERENCES `proyecto_integrador`.`careers` (`id`),
  CONSTRAINT `fk_module_id_careers_module`
    FOREIGN KEY (`module_id`)
    REFERENCES `proyecto_integrador`.`modules` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'Este campo contendra los datos de las carreras y los modulos de cada una de ellas ';


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`modalities`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`modalities` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`modalities` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`schedules`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`schedules` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`schedules` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `inicio` TIME NOT NULL,
  `fin` TIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`group_s`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`group_s` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`group_s` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `group_code` VARCHAR(50) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `schedule_id` INT NOT NULL,
  `modality_id` INT NOT NULL,
  `career_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `groups_careers_fkey_idx` (`career_id` ASC) VISIBLE,
  INDEX `groups_modalities_fkey_idx` (`modality_id` ASC) VISIBLE,
  INDEX `groups_schedules_fkey_idx` (`schedule_id` ASC) VISIBLE,
  CONSTRAINT `group_s_careers_fkey`
    FOREIGN KEY (`career_id`)
    REFERENCES `proyecto_integrador`.`careers` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `group_s_modalities_fkey`
    FOREIGN KEY (`modality_id`)
    REFERENCES `proyecto_integrador`.`modalities` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `group_s_schedules_fkey`
    FOREIGN KEY (`schedule_id`)
    REFERENCES `proyecto_integrador`.`schedules` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'este campo contendra el grupo al que pertenece cada estudiante';


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`types_news`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`types_news` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`types_news` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`news`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`news` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`news` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `description` VARCHAR(3000) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `picture` VARCHAR(500) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `date` DATE NOT NULL,
  `user_id` INT NOT NULL,
  `tipe_new` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `picture_UNIQUE` (`picture` ASC) VISIBLE,
  INDEX `fk_tipe_new_id_news_idx` (`tipe_new` ASC) VISIBLE,
  INDEX `fk_writer_user_id_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_tipe_new_id_news`
    FOREIGN KEY (`tipe_new`)
    REFERENCES `proyecto_integrador`.`types_news` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_writer_user_id_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `proyecto_integrador`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'este campo contendra las noticias que se daran a conocer';


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`roles` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`roles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(80) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `description` VARCHAR(500) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`users_group_s`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`users_group_s` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`users_group_s` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL DEFAULT '0',
  `group_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `users_group_s_users_fkey_idx` (`user_id` ASC) VISIBLE,
  INDEX `users_group_s_groups_fkey_idx` (`group_id` ASC) VISIBLE,
  CONSTRAINT `users_group_s_groups_fkey`
    FOREIGN KEY (`group_id`)
    REFERENCES `proyecto_integrador`.`group_s` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `users_group_s_users_fkey`
    FOREIGN KEY (`user_id`)
    REFERENCES `proyecto_integrador`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = 'Este campo contendra la union de los usuarios y las carreras';


-- -----------------------------------------------------
-- Table `proyecto_integrador`.`users_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyecto_integrador`.`users_roles` ;

CREATE TABLE IF NOT EXISTS `proyecto_integrador`.`users_roles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `rol_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `users_roles_users_fkey_idx` (`user_id` ASC) VISIBLE,
  INDEX `uses_roles_:roles_fkey_idx` (`rol_id` ASC) VISIBLE,
  CONSTRAINT `users_roles_users_fkey`
    FOREIGN KEY (`user_id`)
    REFERENCES `proyecto_integrador`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `uses_roles_:roles_fkey`
    FOREIGN KEY (`rol_id`)
    REFERENCES `proyecto_integrador`.`roles` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
