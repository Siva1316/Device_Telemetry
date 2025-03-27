SELECT
  modem_id,
  failure_probability,
  remaining_lifetime (years)
FROM
  lakehouse.siva.modem_prediction_data