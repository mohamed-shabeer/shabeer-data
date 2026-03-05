# Revenue Analytics Warehouse (dbt + DuckDB)

This project builds a mini revenue analytics warehouse using a star schema and analytics engineering best practices.

## What’s Included
- Raw → staging → marts dbt project structure
- Fact + dimension modeling (star schema)
- dbt tests (unique, not_null, relationships)
- Cohort retention model (advanced SQL)
- Reproducible local run using DuckDB (no cloud account required)

## How to Run (Local)
1. Install Python
2. `pip install -r requirements.txt`
3. `cd revenue-analytics-warehouse/dbt`
4. `dbt build`
