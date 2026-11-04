USE ManufacturingOperations;
GO

CREATE OR ALTER VIEW dbo.vw_valid_production
AS
SELECT *
FROM dbo.fact_production_runs_clean
WHERE data_quality_status = 'VALID';
GO