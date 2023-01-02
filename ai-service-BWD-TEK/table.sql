USE results_db;
DROP TABLE IF EXISTS results_table;
CREATE TABLE results_table (
  id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  DateFrom TIMESTAMP NOT NULL,
  CurrentDate TIMESTAMP NOT NULL,
  WearValue  DECIMAL NOT NULL  
);

