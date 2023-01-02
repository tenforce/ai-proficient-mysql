USE `results_db`;
DROP TABLE IF EXISTS `metadata_table`;
CREATE TABLE `metadata_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  `executed_timestamp` DATETIME NOT NULL,
  `uc_id` VARCHAR(255) NOT NULL,
  `param_number`    SMALLINT(10) NOT NULL,
  `created_timestamp` DATETIME NOT NULL 
  
);


DROP TABLE IF EXISTS `results_table`;
CREATE TABLE `results_table` (
  `id` INT NOT NULL,
  PRIMARY KEY (`id`),
  `update_id` INT NOT NULL,
  FOREIGN KEY (`update_id`)
        REFERENCES metadata_table(`id`),
  `parameter_id` VARCHAR(255) NOT NULL,
  `suggested_parameter_value` FLOAT(10, 4) NOT NULL,
  `old_parameter_value` FLOAT(10, 4) NOT NULL,
  `parameter_value_drift` FLOAT(10, 4) NOT NULL
  
);


