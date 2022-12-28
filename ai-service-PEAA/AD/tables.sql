
USE `results_db`;
DROP TABLE IF EXISTS `AD_report`;
CREATE TABLE `AD_report` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `ts_start_run` TIMESTAMP NOT NULL,
	`ts_end_run` TIMESTAMP NULL,
    `quasi_constant_variables_total` INT NOT NULL,
	`distance` DOUBLE NULL,
	`threshold` DOUBLE NULL,
	`anomalies_detected` SMALLINT NULL,
    `isolation_forest_time_aligned_data_filter_counts` DOUBLE NULL,
	`summary_report` BLOB
   PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `AD_report_quasi_constant_variables`;
CREATE TABLE `AD_report_quasi_constant_variables` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`ad_report_id` INT NOT NULL,
    `variable` NVARCHAR(1024) NULL
   PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `AD_report_decision_tree_method`;
CREATE TABLE `AD_report_variable_importance` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`ad_report_id` INT NOT NULL,
    `method` NVARCHAR(1024) NULL
	`model_accuracy_score_with_criterion_gini_index` DOUBLE NULL,
	`training_set_accuracy_score` DOUBLE NULL,
	`training_set_score` DOUBLE NULL,
	`test_set_score` DOUBLE NULL,
	`precision` DOUBLE NULL,
	`recall` DOUBLE NULL,
	`f1_score` DOUBLE NULL,
	`general_score` DOUBLE NULL
   PRIMARY KEY (`id`)
);
