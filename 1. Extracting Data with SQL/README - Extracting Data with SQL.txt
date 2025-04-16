# Extracting Data with SQL

## Introduction
This project involves analyzing telecom customer churn data using SQL to identify factors that may influence customer churn.

Research Question: From survey responses, what three factors did churned telecom customers rate as the most essential?

## Technologies Used
- PostgreSQL
- pgAdmin

## Data
churn_clean.csv

## Usage
1. Run the create table script to create necessary tables.
2. Import the data from the CSV file into the table using the copy command
3. Execute query script to generate results

## Data Results
The top three essential factors to customer that churned were the following:
1. options provided by the service
2. reliability of the service
3. timely replacements

```sql
-- Create Table

-- Table: public.survey_responses

-- DROP TABLE IF EXISTS public.survey_responses;

CREATE TABLE IF NOT EXISTS public.survey_responses
(
    customer_id text COLLATE pg_catalog."default" NOT NULL,
    timely_responses integer,
    timely_fixes integer,
    timely_replacements integer,
    reliability integer,
    options integer,
    respectful_response integer,
    courteous_exchange integer,
    evidence_of_active_listening integer,
    CONSTRAINT survey_responses_customer_id_fk FOREIGN KEY (customer_id)
        REFERENCES public.customer (customer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.survey_responses
    OWNER to postgres;

-- Copy Command
copy public.survey_responses (customer_id, timely_responses, timely_fixes, timely_replacements, reliability, options, respectful_response, courteous_exchange, evidence_of_active_listening) FROM 'C:/LabFiles/SURVEY~1.CSV' DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';""

-- SQL Query 
SELECT
      ROUND(AVG(p.timely_responses), 3) AS timely_resp_avg,
      ROUND(AVG(p.timely_fixes), 3) AS timely_fixes_avg,
      ROUND(AVG(p.timely_replacements), 3) AS timely_repl_avg,
      ROUND(AVG(p.reliability), 3) AS reliability_avg,
      ROUND(AVG(p.options), 3) AS options_avg,
      ROUND(AVG(p.respectful_response), 3) AS resp_avg,
      ROUND(AVG(p.courteous_exchange), 3) AS court_avg,
      ROUND(AVG(p.evidence_of_active_listening), 3) AS evid_al_avg
FROM survey_responses AS p
INNER JOIN customer as c
ON p.customer_id = c.customer_id
AND c.churn = 'Yes';
```