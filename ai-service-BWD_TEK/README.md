This describes the configuration for the BWD_TEK component. 
During the lifetime of a blade several estimations will be made regarding the blades's ongoing wear.
This table will store this information.


The results database is a single table with the following columns:
  - DateFrom: Timestamp indicates last time the blade was changed.
  - CurrentDate: Timestamp indicates the time of the wear estimation.
  - WearValue: Decimal indicates the estimated wear percentage (0 being no wear and 1 complete wear).
