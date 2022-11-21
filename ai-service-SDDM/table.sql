USE `results_db`;
DROP TABLE IF EXISTS `estimated_characteristics_results_table`;
CREATE TABLE `estimated_characteristics_results_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  `timestamp_run` DATETIME NOT NULL,
  `uc_id` VARCHAR(255) NOT NULL,
  `estimated_parameter_id` VARCHAR(255) NOT NULL,
  `estimated_parameter_value` FLOAT(10, 4) NOT NULL,
  `number_of_relevant_causes` SMALLINT(10) NOT NULL,
  `created_timestamp` DATETIME NOT NULL 
);

USE `results_db`;
DROP TABLE IF EXISTS `causes_results_table`;
CREATE TABLE `causes_results_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  `sddm_id` INT NOT NULL,
  `influential_factor_tag` VARCHAR(255) NOT NULL,
  `influential_factor_value` FLOAT(15, 6) NOT NULL,
  `estimated_influence_value` FLOAT(10, 6) NOT NULL,
  `created_timestamp` DATETIME NOT NULL 
);

