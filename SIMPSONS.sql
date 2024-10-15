TRUNCATE TABLE dbo.FBS_Visa_Costmo_load;

INSERT INTO dbo.FBS_Visa_Costmo_load1

SELECT years , TotalSpent
FROM dbo.FBS_Viza_Costmo_load AS v;

DROP TABLE IF EXISTS dbo.FBS_Visa_Costmo_load
GO
CREATE TABLE dbo.FBS_Visa_Costmo
(YEARS INT , TotalSpent int);
GO