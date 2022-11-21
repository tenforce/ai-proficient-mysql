This describes the configuration for the SDDM component.

The results database has two tables in accordance with the following description:

Table estimated_characteristics_results_table has the following columns:

   - timestamp_run: Timestamp for which SDDM was run 
   - uc_id: String identifier for the use case for which model was run
   - estimated_parameter_id: Identifier of the estimated quality parameter
   - estimated_parameter_value: Estimated quality parameter value
   - number_of_relevant_causes: Number of the most influential causes for the given estimation; they are stored in the other table
   - created_timestamp: Timestamp at which outputs were stored in DB

Table causes_results_table has the following columns:

   - sddm_id: Forign key of the estimated_characteristics_results_table
   - influential_factor_tag: Tag (identifier) of the considered influential process parameter
   - influential_factor_value: Value of the process parameter with influential_factor_tag tag
   - estimated_influence_value: Estimated numerical influence on the output from estimated_characteristics_results_table under sddm_id
   - created_timestamp: Timestamp at which outputs were stored in DB