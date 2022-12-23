USE `results_db`;
DROP TABLE IF EXISTS `SPAA_timeframes`;
CREATE TABLE `SPAA_timeframes` (
	`id` TIMESTAMP NOT NULL,
	`DS_Speed_Conveyor1_Actual_V2`  FLOAT NOT NULL,
	`DS_Speed_Conveyor1_Setpoint_V2` FLOAT NOT NULL,
	`EX_DC_Cooling_Temperature_Actual` FLOAT NOT NULL,
	`EX_DC_Cooling_Temperature_Setpoint` FLOAT NOT NULL,
	`EX_DC_Position_Dancer1_Actual` FLOAT NOT NULL,
	`EX_DC_Position_Dancer1_Setpoint` FLOAT NOT NULL,
	`EX_DC_Position_Dancer2_Actual` FLOAT NOT NULL,
	`EX_DC_Position_Dancer2_Setpoint` FLOAT NOT NULL,
	`EX_DC_Pressure_Dancer1_Actual` FLOAT NOT NULL,
	`EX_DC_Pressure_Dancer1_Setpoint` FLOAT NOT NULL,
	`EX_DC_Pressure_Dancer2_Actual` FLOAT NOT NULL,
	`EX_DC_Pressure_Dancer2_Setpoint` FLOAT NOT NULL,
	`EX_DS_Speed_Shrinkage_Roll3_Actual_V1` FLOAT NOT NULL,
	`EX_DS_Speed_Shrinkage_Roll3_Setpoint_V1` FLOAT NOT NULL,
	`EX_EX1_Feeding_pressure` FLOAT NOT NULL,
	`EX_EX1_Pressure_Mass_Screw1_Actual` FLOAT NOT NULL,
	`EX_EX1_Speed_Screw_Actual` FLOAT NOT NULL,
	`EX_EX1_Speed_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX1_Temperature_Barrel_Zone1_Actual` FLOAT NOT NULL,
	`EX_EX1_Temperature_Barrel_Zone1_Setpoint` FLOAT NOT NULL,
	`EX_EX1_Temperature_Compound_Actual` FLOAT NOT NULL,
	`EX_EX1_Temperature_Feeding_Zone_Actual` FLOAT NOT NULL,
	`EX_EX1_Temperature_Feeding_Zone_Setpoint` FLOAT NOT NULL,
	`EX_EX1_Temperature_Screw_Actual` FLOAT NOT NULL,
	`EX_EX1_Temperature_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX2_Feeding_pressure` FLOAT NOT NULL,
	`EX_EX2_Pressure_Mass_Screw2_Actual` FLOAT NOT NULL,
	`EX_EX2_Speed_Screw_Actual` FLOAT NOT NULL,
	`EX_EX2_Speed_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX2_Temperature_Barrel_Zone1_Actual` FLOAT NOT NULL,
	`EX_EX2_Temperature_Barrel_Zone1_Setpoint` FLOAT NOT NULL,
	`EX_EX2_Temperature_Barrel_Zone2_Actual` FLOAT NOT NULL,
	`EX_EX2_Temperature_Barrel_Zone2_Setpoint` FLOAT NOT NULL,
	`EX_EX2_Temperature_Compound_Actual` FLOAT NOT NULL,
	`EX_EX2_Temperature_Feeding_Zone_Actual` FLOAT NOT NULL,
	`EX_EX2_Temperature_Feeding_Zone_Setpoint` FLOAT NOT NULL,
	`EX_EX2_Temperature_Screw_Actual` FLOAT NOT NULL,
	`EX_EX2_Temperature_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX3_Feeding_pressure` FLOAT NOT NULL,
	`EX_EX3_Pressure_Mass_Screw3_Actual` FLOAT NOT NULL,
	`EX_EX3_Speed_Screw_Actual` FLOAT NOT NULL,
	`EX_EX3_Speed_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX3_Temperature_Barrel_Zone1_Actual` FLOAT NOT NULL,
	`EX_EX3_Temperature_Barrel_Zone1_Setpoint` FLOAT NOT NULL,
	`EX_EX3_Temperature_Barrel_Zone2_Actual` FLOAT NOT NULL,
	`EX_EX3_Temperature_Barrel_Zone2_Setpoint` FLOAT NOT NULL,
	`EX_EX3_Temperature_Compound_Actual` FLOAT NOT NULL,
	`EX_EX3_Temperature_Feeding_Zone_Actual` FLOAT NOT NULL,
	`EX_EX3_Temperature_Feeding_Zone_Setpoint` FLOAT NOT NULL,
	`EX_EX3_Temperature_Screw_Actual` FLOAT NOT NULL,
	`EX_EX3_Temperature_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX4_Feeding_pressure` FLOAT NOT NULL,
	`EX_EX4_Pressure_Mass_Screw4_Actual` FLOAT NOT NULL,
	`EX_EX4_Speed_Screw_Actual` FLOAT NOT NULL,
	`EX_EX4_Speed_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX4_Temperature_Barrel_Zone1_Actual` FLOAT NOT NULL,
	`EX_EX4_Temperature_Barrel_Zone1_Setpoint` FLOAT NOT NULL,
	`EX_EX4_Temperature_Barrel_Zone2_Actual` FLOAT NOT NULL,
	`EX_EX4_Temperature_Barrel_Zone2_Setpoint` FLOAT NOT NULL,
	`EX_EX4_Temperature_Compound_Actual` FLOAT NOT NULL,
	`EX_EX4_Temperature_Feeding_Zone_Actual` FLOAT NOT NULL,
	`EX_EX4_Temperature_Feeding_Zone_Setpoint` FLOAT NOT NULL,
	`EX_EX4_Temperature_Screw_Actual` FLOAT NOT NULL,
	`EX_EX4_Temperature_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX5_Pressure_Mass_Screw5_Actual` FLOAT NOT NULL,
	`EX_EX5_Speed_Screw_Actual` FLOAT NOT NULL,
	`EX_EX5_Speed_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EX5_Temperature_Barrel_Zone1_Actual` FLOAT NOT NULL,
	`EX_EX5_Temperature_Barrel_Zone1_Setpoint` FLOAT NOT NULL,
	`EX_EX5_Temperature_Compound_Actual` FLOAT NOT NULL,
	`EX_EX5_Temperature_Feeding_Zone_Actual` FLOAT NOT NULL,
	`EX_EX5_Temperature_Feeding_Zone_Setpoint` FLOAT NOT NULL,
	`EX_EX5_Temperature_Screw_Actual` FLOAT NOT NULL,
	`EX_EX5_Temperature_Screw_Setpoint` FLOAT NOT NULL,
	`EX_EXH_Temperature_Cassette1_Actual` FLOAT NOT NULL,
	`EX_EXH_Temperature_Cassette1_Setpoint` FLOAT NOT NULL,
	`EX_EXH_Temperature_Cassette2_Actual` FLOAT NOT NULL,
	`EX_EXH_Temperature_Cassette2_Setpoint` FLOAT NOT NULL,
	`EX_EXH_Temperature_Lower_Part_Actual` FLOAT NOT NULL,
	`EX_EXH_Temperature_Lower_Part_Setpoint` FLOAT NOT NULL,
	`EX_EXH_Temperature_Upper_Part_Actual` FLOAT NOT NULL,
	`EX_EXH_Temperature_Upper_Part_Setpoint` FLOAT NOT NULL,
	`EX_INF_Line_Speed_Actual` FLOAT NOT NULL,
	`EX_INF_Line_Speed_Setpoint` FLOAT NOT NULL,
	`EX_INF_Percentage_Line_Speed_Reduction_Setpoint` FLOAT NOT NULL,
	`EX_INF_Receipt_Line_Speed_Setpoint` FLOAT NOT NULL,
	`EX_INF_Speed_Pulling_Roller_Actual` FLOAT NOT NULL,
	`label` TEXT(24) NOT NULL
   PRIMARY KEY (`id`)
);


USE `results_db`;
DROP TABLE IF EXISTS `SPAA_reinforcementRCA`;
CREATE TABLE `SPAA_reinforcementRCA` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`ts_id` TIMESTAMP NOT NULL,
	`rcaList` TEXT(256) NOT NULL,
	PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `SPAA_anomalyDetectionRCA`;
CREATE TABLE `SPAA_anomalyDetectionRCA` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`ts_id` TIMESTAMP NOT NULL,
	`reportedAD` INT NOT NULL,
	`reportedRCA` INT NOT NULL,
	`rca` TEXT(256) NOT NULL,
	`status` TEXT(28) NOT NULL,
	`score` FLOAT NOT NULL,
	PRIMARY KEY (`id`)
);

USE `results_db`;
DROP TABLE IF EXISTS `SPAA_reinforcementAD`;
CREATE TABLE `SPAA_reinforcementAD` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`ts_id` TIMESTAMP NOT NULL,
	`label` TEXT(24) NOT NULL,
	PRIMARY KEY (`id`)
);