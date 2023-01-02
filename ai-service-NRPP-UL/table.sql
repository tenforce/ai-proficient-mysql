USE `results_db`;
DROP TABLE IF EXISTS `NRPP_table_1`;
CREATE TABLE `NRPP_table_1` (
  `ID` INT NOT NULL,
  `StartTime` TIMESTAMP,
  `EndTime`    TIMESTAMP,
  `V1ChangeTime`  TIMESTAMP
);

DROP TABLE IF EXISTS `NRPP_table_2`;
CREATE TABLE `NRPP_table_2` (
  `ID` INT NOT NULL,
  `DateTime` TIMESTAMP,
  `PrognosticsPossibility`    INT,
  `PredictedTimeFrame`  INT
);

