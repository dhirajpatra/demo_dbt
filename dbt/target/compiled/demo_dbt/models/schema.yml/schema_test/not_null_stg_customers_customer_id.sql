
    
    



select count(*) as validation_errors
from DEMO_DB.PUBLIC.stg_customers
where customer_id is null


