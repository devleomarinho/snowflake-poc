
-- Task Gold
CREATE OR REPLACE TASK task_gold_customers
  WAREHOUSE = COMPUTE_WH
  after task_silver_customers
AS 
    call gold_dim_customers()
;