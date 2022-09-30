DROP schema if exists TuSIA_historiaAcademica_db;
CREATE schema TuSIA_historiaAcademica_db;
USE TuSIA_historiaAcademica_db;

CREATE TABLE `TuSIA_historiaAcademica_db`.`subject` (
  `code` INT NOT NULL,
  `name` VARCHAR(60) NOT NULL,
  `credits` TINYINT NOT NULL,
  PRIMARY KEY (`code`));
  
  CREATE TABLE `TuSIA_historiaAcademica_db`.`career_credits` (
  `code` INT NOT NULL,
  `fundamentacion_obligatoria` TINYINT NOT NULL,
  `fundamentacion_optativa` TINYINT NOT NULL,
  `disciplinar_obligatoria` TINYINT NOT NULL,
  `disciplinar_optativa` TINYINT NOT NULL,
  `libre_eleccion` TINYINT NOT NULL,
  `nivelacion` TINYINT NOT NULL,
  `trabajo_de_grado` TINYINT NOT NULL,
  `total` INT NOT NULL,
  PRIMARY KEY (`code`));
  
  CREATE TABLE `TuSIA_historiaAcademica_db`.`story` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(30) NOT NULL,
  `faculty` VARCHAR(45) NOT NULL,
  `career_code` INT NOT NULL,
  `career_name` VARCHAR(45) NOT NULL,
  `state` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `career_code_idx` (`career_code` ASC),
  FOREIGN KEY (`career_code`)
    REFERENCES `TuSIA_historiaAcademica_db`.`career_credits` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `TuSIA_historiaAcademica_db`.`averages` (
  `id_story`BIGINT NOT NULL,
  `PAPA` FLOAT NULL,
  `PA` FLOAT NULL,
  `PAPPI` FLOAT NULL,
  PRIMARY KEY (`id_story`),
  CONSTRAINT `id_story (averages)`
    FOREIGN KEY (`id_story`)
    REFERENCES `TuSIA_historiaAcademica_db`.`story` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `TuSIA_historiaAcademica_db`.`student_subject` (
  `subject_code` INT NOT NULL,
  `id_story`BIGINT NOT NULL,
  `tipology` VARCHAR(45) NOT NULL,
  `period` VARCHAR(30) NOT NULL,
  `grade` FLOAT NOT NULL,
  `outcome` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`subject_code`, `id_story`, `period`),
  CONSTRAINT `subject_code`
    FOREIGN KEY (`subject_code`)
    REFERENCES `TuSIA_historiaAcademica_db`.`subject` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_story (student_subject)`
    FOREIGN KEY (`id_story`)
    REFERENCES `TuSIA_historiaAcademica_db`.`story` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `TuSIA_historiaAcademica_db`.`credit_summary` (
  `id_story` BIGINT NOT NULL,
  `surplus_credits` TINYINT NOT NULL DEFAULT 0,
  `canceled_credits` TINYINT NOT NULL DEFAULT 0,
  `completion_percentage` FLOAT NOT NULL DEFAULT 0.0,
  `aditional_credits` TINYINT NOT NULL DEFAULT 0,
  `credit_quota` SMALLINT NOT NULL,
  `available_credits` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_story`),
  INDEX `id_story (credit_summary)_idx` (`id_story` ASC),
  CONSTRAINT `id_story (credit_summary)`
    FOREIGN KEY (`id_story`)
    REFERENCES `TuSIA_historiaAcademica_db`.`story` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `TuSIA_historiaAcademica_db`.`student_credits_approved` (
  `id_story` BIGINT NOT NULL,
  `fundamentacion_optativa_approved` TINYINT NOT NULL DEFAULT 0,
  `fundamentacion_obligatoria_approved` TINYINT NOT NULL DEFAULT 0,
  `disciplinar_optativa_approved` TINYINT NOT NULL DEFAULT 0,
  `disciplinar_obligatoria_approved` TINYINT NOT NULL DEFAULT 0,
  `nivelacion_approved` TINYINT NOT NULL DEFAULT 0,
  `trabajo_de_grado_approved` TINYINT NOT NULL DEFAULT 0,
  `libre_eleccion_approved` TINYINT NOT NULL DEFAULT 0,
  `total_approved` SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_story`),
  CONSTRAINT `id_story (student_credits_approved)`
    FOREIGN KEY (`id_story`)
    REFERENCES `TuSIA_historiaAcademica_db`.`story` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `TuSIA_historiaAcademica_db`.`student_credits_pending` (
  `id_story` BIGINT NOT NULL,
  `fundamentacion_optativa_pending` TINYINT NOT NULL,
  `fundamentacion_obligatoria_pending` TINYINT NOT NULL,
  `disciplinar_optativa_pending` TINYINT NOT NULL,
  `disciplinar_obligatoria_pending` TINYINT NOT NULL,
  `nivelacion_pending` TINYINT NOT NULL,
  `trabajo_de_grado_pending` TINYINT NOT NULL,
  `libre_eleccion_pending` TINYINT NOT NULL,
  `total_pending` SMALLINT NOT NULL,
  PRIMARY KEY (`id_story`),
  CONSTRAINT `id_story (student_credits_pending)`
    FOREIGN KEY (`id_story`)
    REFERENCES `TuSIA_historiaAcademica_db`.`story` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `TuSIA_historiaAcademica_db`.`student_credits_signed` (
  `id_story` BIGINT NOT NULL,
  `fundamentacion_optativa_signed` TINYINT NOT NULL DEFAULT 0,
  `fundamentacion_obligatoria_signed` TINYINT NOT NULL DEFAULT 0,
  `disciplinar_optativa_signed` TINYINT NOT NULL DEFAULT 0,
  `disciplinar_obligatoria_signed` TINYINT NOT NULL DEFAULT 0,
  `nivelacion_signed` TINYINT NOT NULL DEFAULT 0,
  `trabajo_de_grado_signed` TINYINT NOT NULL DEFAULT 0,
  `libre_eleccion_signed` TINYINT NOT NULL DEFAULT 0,
  `total_signed` SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_story`),
  CONSTRAINT `id_story (student_credits_signed)`
    FOREIGN KEY (`id_story`)
    REFERENCES `TuSIA_historiaAcademica_db`.`story` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `TuSIA_historiaAcademica_db`.`student_credits_taken` (
  `id_story` BIGINT NOT NULL,
  `fundamentacion_optativa_taken` TINYINT NOT NULL DEFAULT 0,
  `fundamentacion_obligatoria_taken` TINYINT NOT NULL DEFAULT 0,
  `disciplinar_optativa_taken` TINYINT NOT NULL DEFAULT 0,
  `disciplinar_obligatoria_taken` TINYINT NOT NULL DEFAULT 0,
  `nivelacion_taken` TINYINT NOT NULL DEFAULT 0,
  `trabajo_de_grado_taken` TINYINT NOT NULL DEFAULT 0,
  `libre_eleccion_taken` TINYINT NOT NULL DEFAULT 0,
  `total_taken` SMALLINT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_story`),
  CONSTRAINT `id_story (student_credits_taken)`
    FOREIGN KEY (`id_story`)
    REFERENCES `TuSIA_historiaAcademica_db`.`story` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



