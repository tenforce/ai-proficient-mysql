This describes the configuration for the NVI component.

The results database has four tables in accordance with the following description:

Table ADVICES:

The table contains process characteristics and the outcome of anomaly detections of time X.The table is used by the app so the user can see the history and by the reinforcement learning mechanism

Table CANCELLEDACTIONS:

This table contains the outcomes of SPAA component.The table is used by the app so the user can see the live result,history and by the reinforcement learning mechanism

Table EXECUTEDACTIONS:

This table contains user feedback of root cause analysis.The table is used by the app so the user can see the history and by the reinforcement learning mechanism

Table PARAMETER:

This table contains user feedback of anomaly detection.The table is used by the app so the user can see the history and by the reinforcement learning mechanism
