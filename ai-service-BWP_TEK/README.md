This describes the configuration for the BWP_TEK component.

This table is used to store data regarding predictions for blade estimated cuts vs. wear index.
Each time a prediction is performed a series of points will be generated, showing the wear index for several number of cuts. 
Some of these values are estimations based on the current status of the blade while the rest of the are predictions for the remaining life of the blade
 
The results database is a single table with the following columns:
  - PredictionID: Auto-incremental interger indicating each prediction performed. 
  - Prediction: Boolean indicating if the value is a estimated value or a predicted one.
  - CutNumber: Integer indicating the numbers of cuts
  - WearValue: Decimal indicating the wear index for a specific number of cuts (0 being no wear and 1 complete wear).
	
