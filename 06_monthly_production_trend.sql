SELECT
    YEAR(production_date) AS Production_Year,
    MONTH(production_date) AS Production_Month,
    SUM(produced_units) AS Total_Production,
    SUM(good_units) AS Total_Good_Units,
    SUM(scrap_units) AS Total_Scrap
FROM dbo.vw_valid_production
GROUP BY
    YEAR(production_date),
    MONTH(production_date)
ORDER BY
    Production_Year,
    Production_Month;