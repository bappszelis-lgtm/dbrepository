{{
    config(
        materialized='ephemeral'
    )
}}
select
customer_id,
min(order_date) as first_order_date,
max(order_date) as most_recent_order_date,
count(*) as number_of_orders
from {{ source('s1', 'orders') }}
group by 1