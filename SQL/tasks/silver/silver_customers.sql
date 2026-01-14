
-- Task Silver
CREATE OR REPLACE TASK task_silver_customers
  WAREHOUSE = COMPUTE_WH
  after task_bronze_customers
AS 
    call load_silver_customers()
;
