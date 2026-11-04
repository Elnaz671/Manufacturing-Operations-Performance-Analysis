SELECT
    line_id,
    COUNT(*) AS Production_Runs,
    SUM(produced_units) AS Total_Production,
    SUM(good_units) AS Total_Good_Units,
    CAST(
        100.0 * SUM(good_units) /
        NULLIF(SUM(produced_units), 0)
        AS DECIMAL(10,2)
    ) AS Yield_Percent
FROM dbo.vw_valid_production
GROUP BY line_id
ORDER BY Yield_Percent DESC;