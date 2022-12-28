
USE `results_db`;
DROP TABLE IF EXISTS `FS_XAI_report`;
CREATE TABLE `FS_XAI_report` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `ts_start_run` TIMESTAMP NOT NULL,
	`ts_end_run` TIMESTAMP NULL,
	`best_model_name` NVARCHAR(255),
	`acuracy` DECIMAL(1,10),
	`training_runtime_sec` DOUBLE NULL,
	`rmse` DOUBLE NULL,
	`r2` DOUBLE NULL,
	`predictor_explainability_real` DOUBLE NULL,
	`predictor_explainability_prediction` DOUBLE NULL,
	`explainer_expected_or_base_value` DOUBLE NULL,
	`prediction_from_model` DOUBLE NULL,
	`prediction_from_adding_shap_values_to_base_value` DOUBLE NULL,
	`summary_report` BLOB
   PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `FS_XAI_report_variable_importance`;
CREATE TABLE `FS_XAI_report_variable_importance` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`fs_xai_report_id` INT NOT NULL,
    `variable` NVARCHAR(1024) NULL
   PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `FS_XAI_report_shap_values`;
CREATE TABLE `FS_XAI_report_shap_values` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`fs_xai_report_id` INT NOT NULL,
    `explainer_shap_value_for_sample_value` DOUBLE NOT NULL
   PRIMARY KEY (`id`)
);