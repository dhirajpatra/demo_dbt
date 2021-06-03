

      create or replace transient table DEMO_DB.PUBLIC.stg_customers  as
      (select 
    id as customer_id,
    first_name,
    last_name

from customers
      );
    