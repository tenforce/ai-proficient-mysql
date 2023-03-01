USE results_db;
DROP TABLE IF EXISTS results_table;
CREATE TABLE results_table (
  id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  PredictionID INT NOT NULL,
  Prediction BOOLEAN NOT NULL,
  CutNumber  INT NOT NULL,  
  WearValue  DECIMAL NOT NULL  
);
