SELECT
  timestamp,
  modem_id,
  concat(cast(timestamp as varchar) , '-' , modem_id) as concat_colu
FROM
  lakehouse.siva.modem_data