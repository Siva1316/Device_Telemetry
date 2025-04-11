SELECT
  device_id,
  risk_score,
  life_expected (years),
  failure_status
FROM
  lakehouse.siva.device_prediction_data