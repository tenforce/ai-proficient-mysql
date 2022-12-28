This describes the configuration for the FS_XAI component (Explainable Feature Selection) component from the PEAA service (Post-Hock Explainable Anomaly Analysis) of the Quality Analysis Tool.

The results database has four tables in accordance with the following description:

Table FS_XAI_report:

The table contains the result of executing the detection of the best model to apply and the training process and prediction algorithms.

Table FS_XAI_report_variable_importance:

This table contains the most important variables in asc order.

Table FS_XAI_report_shap_values:

This table contains the shap explainer values for the input sample.