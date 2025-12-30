{{
    config(
        materialized='ephemeral'
    )
}}
with customers as (
select
customer_id as customer_id,
first_name,
last_name
from dev_db.dev_schema.customers
)
select * from customers
