USE `results_db`;
DROP TABLE IF EXISTS `DQR_report`;
CREATE TABLE `DQR_report` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `ts_start_run` TIMESTAMP NOT NULL,
    `ts_end_run` TIMESTAMP NULL,
    `summary_report` MEDIUMBLOB,
    PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `DQR_report_variable`;
CREATE TABLE `DQR_report_variable` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `dqr_report_id` INT NOT NULL,
    `variable` NVARCHAR(1024) NULL,
    `distinct` BIGINT NULL,
    `distinct_percentage` DECIMAL NULL,
    `missing` BIGINT NULL,
    `missing_percentage` DECIMAL NULL,
    `infinite` BIGINT NULL,
    `infinite_percentage` DECIMAL NULL,
    `zeros` BIGINT NULL,
    `zeros_percentage` DECIMAL NULL,
    `negative` BIGINT NULL,
    `negative_percentage` DECIMAL NULL,
    `mean` DOUBLE NULL,
    `min` DOUBLE NULL,
    `max` DOUBLE NULL,
    `std` DOUBLE NULL,
    `variance` DOUBLE NULL,
    `iqr` DOUBLE NULL,
    `cv` DOUBLE NULL,
    `p5` DOUBLE NULL,
    `p25` DOUBLE NULL,	
    `p50` DOUBLE NULL,
    `p75` DOUBLE NULL,
    `p95` DOUBLE NULL,
    PRIMARY KEY (`id`),
    KEY `dqr_report_id` (`dqr_report_id`),
    CONSTRAINT `DQR_report_variable_ibfk_1` FOREIGN KEY (`dqr_report_id`) REFERENCES `DQR_report` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);