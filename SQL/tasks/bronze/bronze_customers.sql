-- Task Bronze
CREATE OR REPLACE TASK task_bronze_customers
  WAREHOUSE = COMPUTE_WH
    SCHEDULE = 'USING CRON 0 5 * * * UTC'
AS call  load_bronze_customers()
;

