SET @advice_id = 0;

INSERT INTO `ADVICES` (`AIP_ADV_DATETIME`, `AIP_ADV_ADVICE`, `AIP_ADV_PARAM_PROPOSED_VALUE`, `AIP_ADV_PARAM_OLD_VALUE`, `AIP_ADV_PARAM_NAME`)
VALUES ('2022-01-01 10:00:00', 'AIP_ADV_ADVICE', 'AIP_ADV_PARAM_PROPOSED_VALUE', 'AIP_ADV_PARAM_OLD_VALUE', 'AIP_ADV_PARAM_NAME');

SET @advice_id = LAST_INSERT_ID();

INSERT INTO `PARAMETER` (`PARAM_ADV_PK_ID`, `PARAM_PROPOSED_VALUE`, `PARAM_OLD_VALUE`, `PARAM_VALUE`, `PARAM_NAME`)
VALUES (@advice_id, 'PARAM_PROPOSED_VALUE', 'PARAM_OLD_VALUE', 'PARAM_VALUE', 'PARAM_NAME');

SET @parameter_id = LAST_INSERT_ID();

INSERT INTO `EXECUTEDACTIONS` (`AIEXEC_PARAM_ADV_PK_ID`, `AIEXEC_PARAM_ADVICE`, `AIEXEC_PARAM_NAME`, `AIEXEC_PARAM_OLD_VALUE`, `AIEXEC_PARAM_VALUE`, `AIEXEC_PARAM_DATETIME`, `AIEXEC_PARAM_PROPOSED_VALUE`, `AIEXEC_PARAM_EXECUTED_DATETIME1`)
VALUES (@parameter_id, 'AIEXEC_PARAM_ADVICE', 'AIEXEC_PARAM_NAME', 'AIEXEC_PARAM_OLD_VALUE', 'AIEXEC_PARAM_VALUE', '2022-01-01 10:00:00', 'AIEXEC_PARAM_PROPOSED_VALUE', '2022-01-01 11:00:00');

INSERT INTO `CANCELLEDACTIONS` (`AIC_PARAM_ADV_PK_ID`, `AIC_PARAM_ADVICE`, `AIC_PARAM_NAME`, `AIC_PARAM_OLD_VALUE`, `AIC_PARAM_VALUE`, `AIC_PARAM_DATETIME`, `AIC_PARAM_CANCELLED_DATETIME`)
VALUES (@parameter_id, 'AIC_PARAM_ADVICE', 'AIC_PARAM_NAME', 'AIC_PARAM_OLD_VALUE', 'AIC_PARAM_VALUE', '2022-01-01 10:00:00', '2022-01-01 10:30:00');