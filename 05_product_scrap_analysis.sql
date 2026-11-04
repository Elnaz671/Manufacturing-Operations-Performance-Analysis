SELECT
    product_id,
    COUNT(*) AS Production_Runs,
    SUM(produced_units) AS Total_Production,
    SUM(scrap_units) AS Total_Scrap,
    CAST(
        100.0 * SUM(scrap_units) /
        NULLIF(SUM(produced_units), 0)
        AS DECIMAL(10,2)
    ) AS Scrap_Rate_Percent
FROM dbo.vw_valid_production
GROUP BY product_id
ORDER BY Scrap_Rate_Percent DESC;