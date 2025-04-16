```sql
copy public.survey_responses (customer_id, timely_responses, timely_fixes, timely_replacements, reliability, options, respectful_response, courteous_exchange, evidence_of_active_listening) FROM 'C:/LabFiles/SURVEY~1.CSV' DELIMITER ',' CSV HEADER QUOTE '\"' ESCAPE '''';""
```
