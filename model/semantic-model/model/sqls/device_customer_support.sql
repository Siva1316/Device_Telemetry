WITH customer_support AS (
    SELECT 
        device_id,
        customer_id,
        resolution,
        service_type,
        time_to_fix,
        satisfaction_score,
        COUNT(DISTINCT CASE WHEN service_type = 'Repair/Replacement' THEN ticket_id END) AS replacement_count
    FROM lakehouse.siva.customer_support_feedback
    GROUP BY device_id, customer_id, resolution, service_type, time_to_fix, satisfaction_score
),
failure_data AS (
    SELECT 
        device_id,
        COUNT(DISTINCT failure_id) AS repair_history
    FROM lakehouse.siva.failure_logs
    WHERE resolution_status = 'Fixed' 
    GROUP BY device_id
)
SELECT 
    d.device_id, 
    d.customer_id, 
    d.purchase_date, 
    d.warranty_status,
    cs.resolution,
    cs.service_type,
    cs.time_to_fix,
    cs.satisfaction_score,
    COALESCE(cs.replacement_count, 0) AS replacement_count,
    COALESCE(f.repair_history, 0) AS repair_history  
FROM lakehouse.siva.device_master_data d
LEFT JOIN customer_support cs ON d.device_id = cs.device_id
LEFT JOIN failure_data f ON d.device_id = f.device_id;

