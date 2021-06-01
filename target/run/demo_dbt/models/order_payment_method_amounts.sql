

      create or replace transient table DEMO_DB.PUBLIC.order_payment_method_amounts  as
      (

select
order_id,



sum(amount) as total_amount

from DEMO_DB.PUBLIC.raw_payments
group by 1
      );
    