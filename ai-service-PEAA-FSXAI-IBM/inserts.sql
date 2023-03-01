INSERT INTO `FS_XAI_report` (`ts_start_run`, `ts_end_run`, `best_model_name`, `accuracy`, `training_runtime_sec`, `rmse`, `r2`, `predictor_explainability_real`, `predictor_explainability_prediction`, `explainer_expected_or_base_value`, `prediction_from_model`, `prediction_from_adding_shap_values_to_base_value`, `summary_report`)
VALUES ('2022-01-01 10:00:00', '2022-01-01 11:00:00', 'random forest', 0.9, 100, 0.2, 0.7, 0.8, 0.9, 10, 11, 12, 'summary report content');

SET @fs_xai_report_id = LAST_INSERT_ID();

INSERT INTO `FS_XAI_report_variable_importance` (`fs_xai_report_id`, `variable`)
VALUES (@fs_xai_report_id, 'variable 1');

INSERT INTO `FS_XAI_report_shap_values` (`fs_xai_report_id`, `explainer_shap_value_for_sample_value`)
VALUES (@fs_xai_report_id, 0.5);