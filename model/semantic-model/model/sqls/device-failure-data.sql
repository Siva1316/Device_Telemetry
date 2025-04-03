SELECT
  device_id,
  error_code,
  failure_id,
  failure_reason,
  issue_category,
  resolution_status,
  resolved_at,
  severity,
  timestamp,
  concat(cast(timestamp as varchar) , '-' , device_id) as concat_colu
FROM
  lakehouse.siva.failure_logs
