USE `results_db`;
DROP TABLE IF EXISTS `additives_table`;
CREATE TABLE `additives_table` (
  `additive_name`               VARCHAR(255) NOT NULL,
  PRIMARY KEY (`additive_name`),
  `additive_synonym`            VARCHAR(255),
  FOREIGN KEY (additive_synonym) REFERENCES additives_table(additive_name),
  `update_time`                 TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

USE `results_db`;
DROP TABLE IF EXISTS `lot_numbers_table`;
CREATE TABLE `lot_numbers_table` (
  `lot_number_name`             VARCHAR(255) NOT NULL,
   PRIMARY KEY (`lot_number_name`),
  `additive_name`               VARCHAR(255),
  FOREIGN KEY (additive_name) REFERENCES additives_table(additive_name),
  `update_time`                 TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

USE `results_db`;
DROP TABLE IF EXISTS `results_table`;
CREATE TABLE `results_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  `feeder_check_in_time`        DATETIME NOT NULL,
  `feeder_name`                 VARCHAR(255) NOT NULL,
  `label_image`                 MEDIUMBLOB,
  `additive_name`               VARCHAR(255),
  FOREIGN KEY (additive_name) REFERENCES additives_table(additive_name),
  `additive_name_on_label`      VARCHAR(255),
  FOREIGN KEY (additive_name_on_label) REFERENCES additives_table(additive_name),
  `lot_number_name`             VARCHAR(255),
  FOREIGN KEY (lot_number_name) REFERENCES lot_numbers_table(lot_number_name),
  `status`                      VARCHAR(255) NOT NULL,
  `confidence_score`            VARCHAR(255),
  `ocr_text`                    VARCHAR(255),
  `update_time`                 TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


