This describes the configuration for the GHO component.

The results database contains two tables.

The table metadata_table with the following columns:

   - executed_timestamp: Timestamp at which the optimization has been triggered. 
   - uc_id: String that indicates the use case for which the model has been run.
   - param_number: Integer that represents the number of parameters(set-points of the relevant variables) which readjustment is recommended by the GHO service.
   - created_timestamp: Timestamp at which the optimization outputs are updated and stored in the database.

The table results_table with the following columns:

   - update_id: Foreign key (metadata_table primary key) that indicates to which optimization run, the accompanied, suggested parameters changes belong. 
   - parameter_id: String that represents the id or tag of the process parameter for which correction is recommended by the GHO service.
   - suggested_parameter_value: Float number - Suggested value for the parameter whose readjustment is recommended by the GHO service.
   - old_parameter_value: Float number - Old value for the parameter which readjustment is recommended by the GHO service.
   - parameter_value_drift: Float number - Amount of parameter value change, recommended by the GHO service.