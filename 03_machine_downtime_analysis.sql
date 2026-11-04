USE ManufacturingOperations;
GO

SELECT
    machine_id,
    SUM(downtime_minutes) AS Total_Downtime_Minutes
FROM dbo.fact_downtime_events_clean
WHERE data_quality_status = 'VALID'
GROUP BY machine_id
ORDER BY Total_Downtime_Minutes DESC;
GO