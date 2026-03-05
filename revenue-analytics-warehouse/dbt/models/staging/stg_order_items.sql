with src as (
  select *
  from read_csv_auto('../duckdb/raw/order_items.csv', header=true)
)

select
  cast(order_id as bigint) as order_id,
  cast(line_id as int) as line_id,
  sku,
  cast(qty as int) as qty,
  cast(unit_price as double) as unit_price,
  cast(qty as int) * cast(unit_price as double) as line_revenue
from src
