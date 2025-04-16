```sql
-- Create a working (staging) table containing the original location data for data cleaning (Detecting NULL values)
DROP TABLE IF EXISTS location_staging;

CREATE TABLE location_staging AS
SELECT * FROM location_data;

-- Detect NULL values
SELECT *
FROM location_staging
WHERE location_staging IS NULL;

-- Create a working (staging) table containing the original location data for data cleaning (Detecting duplicate values)
DROP TABLE IF EXISTS location_staging2;
CREATE TABLE location_staging2 AS
SELECT * FROM location_data
ORDER BY location_id;

-- Detect duplicate rows
WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY location_id, zipcode, city, state, county) AS row_num
FROM location_staging2
)

-- Return all table values
-- SELECT *
-- FROM duplicate_cte

-- Return only duplicate rows 
SELECT *
FROM duplicate_cte
WHERE row_num >2;
```

```sql
-- Create a working (staging) table containing the original patient data for data cleaning (Detecting NULL values)
DROP TABLE IF EXISTS patient_staging;

CREATE TABLE patient_staging AS
SELECT * FROM patient;

-- Detect NULL values
SELECT *
FROM patient_staging
WHERE patient_staging IS NULL;

-- Create a working (staging) table containing the original patient data for data cleaning (Detecting duplicate values)
DROP TABLE IF EXISTS patient_staging2;
CREATE TABLE patient_staging2 AS
SELECT * FROM patient;

-- Detect duplicate rows
WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY patient_id,lat,lng,population,children,age,income,marital,readmis,gender,
initial_days,totalcharge,additional_charges,vitd_levels,doc_visits,full_meals,vitd_supp,
soft_drink,highblood,stroke,job_id,compl_id,admis_id,location_id) AS row_num
FROM patient_staging2
)

-- Return all table values
-- SELECT *
-- FROM duplicate_cte

-- Return only duplicate rows 
SELECT *
FROM duplicate_cte
WHERE row_num >2;
```

```sql
-- Create a table containing a subset of the original data 
DROP TABLE IF EXISTS patient_subset;

CREATE TABLE patient_subset AS
SELECT patient_id, readmis, location_id FROM patient
ORDER BY location_id;
```
