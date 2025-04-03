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
  timestamp,
  concat(cast(timestamp as varchar) , '-' , device_id) as concat_colu
FROM
  lakehouse.siva.device_telmetry_data