
    
    



select count(*) as validation_errors
from DEMO_DB.PUBLIC.stg_orders
where customer_id is null


