
    
    



select count(*) as validation_errors
from DEMO_DB.PUBLIC.stg_orders
where order_id is null


