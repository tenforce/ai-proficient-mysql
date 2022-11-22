USE `results_db`;
DROP TABLE IF EXISTS `CROM_table`;
CREATE TABLE `CROM_table` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  `key`             VARCHAR(255) NOT NULL,
  `name`            VARCHAR(255) NOT NULL,
  `unit`            VARCHAR(255),
  `timestamp`       TIMESTAMP NOT NULL,
  `value`           VARCHAR(255) NOT NULL
);