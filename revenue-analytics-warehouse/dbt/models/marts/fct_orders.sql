with o as (
  select * from {{ ref('stg_orders') }}
),

i as (
  select * from {{ ref('stg_order_items') }}
),

items_agg as (
  select
    order_id,
    sum(line_revenue) as items_revenue,
    sum(qty) as item_qty
  from i
  group by 1
)

select
  o.order_id,
  o.order_ts,
  cast(date_trunc('day', o.order_ts) as date) as order_date,
  o.customer_id,
  o.merchant_id,
  o.channel,
  o.payment_method,
  o.currency,
  items_agg.items_revenue,
  o.discount_amount,
  o.tax_amount,
  o.shipping_amount,
  (items_agg.items_revenue - o.discount_amount + o.tax_amount + o.shipping_amount) as gross_revenue,
  items_agg.item_qty
from o
join items_agg using (order_id)
