SELECT
  device_id,
  cpu_usage,
  disk_free_space,
  disk_status,
  driver_status,
  network_speed,
  process_count,
  thread_count,
  CAST(timestamp AS TIMESTAMP) AS timestamp
FROM
  lakehouse.siva.device_events_process