select * from {{ ref('t_customers') }} customers ,
select * from {{ ref('t_orders') }} orders ,
select * from {{ ref('t_customer_orders') }} customer_orders ,
final as (
select
customers.customer_id,
customers.first_name,
customers.last_name,
customer_orders.first_order_date, 
customer_orders.most_recent_order_date,
coalesce (customer_orders.number_of_orders, 0) as number_of_orders
from customers
left join customer_orders 
on customers.customer_id=customer_orders.customer_id
)
select * from final