select
order_id as order_id,
customer_id as customer_id,
order_date,
status
from {{ source('s1', 'orders') }}