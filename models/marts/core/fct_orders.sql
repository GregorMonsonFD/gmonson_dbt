with order_view as (
    select 
        order_id,
        customer_id,
        amount
    from {{ ref('stg_orders') }}
    left join {{ ref('stg_payments') }} using (order_id)
)

select 
    *
from order_view