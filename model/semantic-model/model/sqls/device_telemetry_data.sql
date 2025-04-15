SELECT
  device_id,
  cpu_usage,
  memory_usage,
  disk_health,
  battery_health,
  temperature,
  fan_speed,
  error_code,
  internet_status,
  CAST(timestamp AS TIMESTAMP) AS timestamp
FROM
  lakehouse.siva.device_telmetry_data