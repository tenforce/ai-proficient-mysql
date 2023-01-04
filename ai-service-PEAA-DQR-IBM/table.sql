USE `results_db`;
DROP TABLE IF EXISTS `DQR_report`;
CREATE TABLE `DQR_report` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `ts_start_run` TIMESTAMP NOT NULL,
	`ts_end_run` TIMESTAMP NULL,
	`summary_report` BLOB,
   PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `DQR_report_variable`;
CREATE TABLE `DQR_report_variable` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`dqr_report_id` INT NOT NULL,
    `variable` NVARCHAR(1024) NULL,
	`distinct` BIGINT NULL,
    `distinct_percentage` DECIMAL(3,2) NULL,
	`missing` BIGINT NULL,
    `missing_percentage` DECIMAL(3,2) NULL,
    `infinite` BIGINT NULL,
    `infinite_percentage` DECIMAL(3,2) NULL,
	`mean` DOUBLE NULL,
	`minimum` DOUBLE NULL,
	`maximum` DOUBLE NULL,
    `zeros` BIGINT NULL,
    `zeros_percentage` DECIMAL(3,2) NULL,
    `negative` BIGINT NULL,
    `negative_percentage` DECIMAL(3,2) NULL,
	`memory_size` DOUBLE NULL,
   PRIMARY KEY (`id`)
);