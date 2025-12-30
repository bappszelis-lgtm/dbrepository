{{
    config(
        materialized='ephemeral'
    )
}}
select
customer_id as customer_id,
first_name,
last_name
from {{ source('s1', 'customers') }}

