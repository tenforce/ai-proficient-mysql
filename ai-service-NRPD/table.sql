USE `results_db`;
DROP TABLE IF EXISTS `NRPD_table`;
CREATE TABLE `NRPD_table` (
  `ID` INT NOT NULL,
  `DateTime` TIMESTAMP,
  `LinePartName`    VARCHAR(40),
  `ContributionScore`  float
);
