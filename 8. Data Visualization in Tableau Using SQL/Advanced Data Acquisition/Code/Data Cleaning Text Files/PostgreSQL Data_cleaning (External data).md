```sql
-- Create a table containing a subset of the original data 
DROP TABLE IF EXISTS hospitals_subset;

CREATE TABLE hospitals_subset AS
SELECT "provider_id", "hospital_name", "address", "city", "state", "zipcode"
FROM hospitals;

-- Create a working (staging) table for data cleaning (Detecting NULL values)
DROP TABLE IF EXISTS hospitals_staging;

CREATE TABLE hospitals_staging AS
SELECT * FROM hospitals_subset;

-- Detect NULL values
SELECT *
FROM hospitals_staging
WHERE NOT(hospitals_staging IS NOT NULL);

-- Create a working (staging) table to select only unique provider IDs removing duplicate values 
DROP TABLE IF EXISTS hospitals_staging2;
CREATE TABLE hospitals_staging2 AS 
SELECT DISTINCT(provider_id), hospital_name, address, city, state, zipcode
FROM hospitals_staging
ORDER BY provider_id;
```
