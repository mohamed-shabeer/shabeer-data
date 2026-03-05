# dbt Project (DuckDB)

## Model Layers
- **staging/**: Clean + type-cast raw CSV sources
- **marts/**: Star schema (dimensions + facts) + analytics marts

## Star Schema
- `dim_customers`
- `dim_merchants`
- `fct_orders` (joins orders + items, computes gross revenue)
- `mart_customer_cohorts` (cohort retention by first purchase month)

## How to Run Locally
1. Install dependencies:
   - `pip install -r ../requirements.txt`

2. Copy the sample dbt profile:
   - Create a `profiles.yml` file based on `profiles.yml.example`

3. Run dbt:
   - `dbt build`

## Data
Raw CSVs live in:
- `../duckdb/raw/`
