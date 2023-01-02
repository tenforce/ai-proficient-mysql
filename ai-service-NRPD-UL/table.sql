USE `results_db`;
DROP TABLE IF EXISTS `results_table`;
CREATE TABLE `results_table` (
  `ID` INT NOT NULL,
  `DateTime` TIMESTAMP,
  `LinePartName`    VARCHAR(40),
  `ContributionScore`  float
);
