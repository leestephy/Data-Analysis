```sql
SELECT CAST("hospitals_staging2"."address" AS TEXT) AS "address",
  CAST("hospitals_staging2"."city" AS TEXT) AS "city (hospitals_staging2)",
  CAST("hospitals_staging2"."hospital_name" AS TEXT) AS "hospital_name",
  "hospitals_staging2"."provider_id" AS "provider_id",
  CAST("hospitals_staging2"."state" AS TEXT) AS "state (hospitals_staging2)",
  CAST("hospitals_staging2"."zipcode" AS TEXT) AS "zipcode (hospitals_staging2)"
FROM "public"."hospitals_staging2" "hospitals_staging2"
```
