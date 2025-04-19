with orders as (
    select * from {{ref('stg_jaffle_shop_orders')}}
),
payments as (
    select * from {{ref('stg_stripe_payments')}}
)

select 
    order_id
    , customer_id
    , amount
from orders
left join payments using (order_id)