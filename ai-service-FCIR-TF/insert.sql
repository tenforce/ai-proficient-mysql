INSERT INTO additives_table (additive_name, additive_synonym) VALUES ('additive name read', NULL);
INSERT INTO additives_table (additive_name, additive_synonym) VALUES ('additive name', 'additive name read');
INSERT INTO lot_numbers_table (lot_number_name, additive_name) VALUES ('lot number name', 'additive name');
INSERT INTO results_table_fcir (id, feeder_check_in_time, feeder_name, label_image, additive_name, additive_name_on_label, lot_number_name, status, confidence_score, ocr_text) VALUES (1, 'feeder name', NULL, 'additive name', 'additive name read', 'lot number name', 'in progress', '50%', 'lorem ipsum');
