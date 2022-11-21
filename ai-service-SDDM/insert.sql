INSERT INTO estimated_characteristics_results_table (id, timestamp_run, uc_id, estimated_parameter_id, estimated_parameter_value, number_of_relevant_causes, created_timestamp) 
VALUES (1, '2018-10-20', 'CONTI10', 'EX_EX1_Speed_Screw_Setpoint', 2.78, 3, '2022-11-17 2:58:15');

INSERT INTO causes_results_table (id, sddm_id, influential_factor_tag, influential_factor_value, estimated_influence_value, created_timestamp) 
VALUES (1, 1, 'EX_EX1_Feeding_pressure', 15.6459, -0.4896, '2022-11-17 2:58:15');
INSERT INTO causes_results_table (id, sddm_id, influential_factor_tag, influential_factor_value, estimated_influence_value, created_timestamp) 
VALUES (2, 1, 'EX_EX1_Speed_Screw_Actual', 4.1697, 0.3475, '2022-11-17 2:58:15');
INSERT INTO causes_results_table (id, sddm_id, influential_factor_tag, influential_factor_value, estimated_influence_value, created_timestamp) 
VALUES (3, 1, 'DS_Speed_Conveyor1_Actual_V2', 19.0631, -0.4896, '2022-11-17 2:58:15');
