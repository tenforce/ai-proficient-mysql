INSERT INTO `AD_report` (`ts_start_run`, `ts_end_run`, `quasi_constant_variables_total`, `distance`, `threshold`, `anomalies_detected`, `isolation_forest_time_aligned_data_filter_counts`, `summary_report`)
VALUES ('2022-01-01 10:00:00', '2022-01-01 11:00:00', 5, 0.5, 0.7, 3, 3.5, 'summary report content');

SET @ad_report_id = LAST_INSERT_ID();

INSERT INTO `AD_report_quasi_constant_variables` (`ad_report_id`, `variable`)
VALUES (@ad_report_id, 'variable 1');

INSERT INTO `AD_report_variable_importance` (`ad_report_id`, `method`, `model_accuracy_score_with_criterion_gini_index`, `training_set_accuracy_score`, `training_set_score`, `test_set_score`, `precision`, `recall`, `f1_score`, `general_score`)
VALUES (@ad_report_id, 'decision tree', 0.8, 0.9, 0.85, 0.75, 0.7, 0.8, 0.75, 0.77);