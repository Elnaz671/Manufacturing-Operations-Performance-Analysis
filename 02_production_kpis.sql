USE ManufacturingOperations;
GO

SELECT
    COUNT(*) AS Total_Production_Runs,
    SUM(produced_units) AS Total_Production,
    SUM(good_units) AS Total_Good_Units,
    SUM(scrap_units) AS Total_Scrap_Units,
    SUM(rework_units) AS Total_Rework_Units,

    CAST(
        100.0 * SUM(good_units) /
        NULLIF(SUM(produced_units), 0)
        AS DECIMAL(10,2)
    ) AS Production_Yield_Percent,

    CAST(
        100.0 * SUM(scrap_units) /
        NULLIF(SUM(produced_units), 0)
        AS DECIMAL(10,2)
    ) AS Scrap_Rate_Percent,

    CAST(
        100.0 * SUM(rework_units) /
        NULLIF(SUM(produced_units), 0)
        AS DECIMAL(10,2)
    ) AS Rework_Rate_Percent

FROM dbo.vw_valid_production;
GO