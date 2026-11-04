# Manufacturing Operations Performance Analysis — Data Dictionary

All records in this project are **synthetic and created for portfolio/learning purposes**. They do not represent a real factory or FUJIFILM data.

## Files and grain

- `fact_production_runs.csv`: one row per production run (one line, one shift, one day).
- `fact_downtime_events.csv`: one row per recorded downtime event linked to a production run.
- `dim_machines.csv`: machine reference data.
- `dim_products.csv`: product reference data.
- `dim_lines.csv`: production line reference data.

## Key fields

### fact_production_runs
- `production_run_id`: unique run identifier (intentionally contains one duplicate for data-quality practice).
- `production_date`: production date.
- `shift`: Day or Night.
- `line_id`, `machine_id`, `product_id`: dimension keys.
- `planned_units`: target units planned for the run.
- `produced_units`: total units produced.
- `good_units`: units accepted as good.
- `scrap_units`: units rejected as scrap.
- `rework_units`: units requiring rework.
- `downtime_minutes`: total downtime minutes reported for the run.
- `planned_production_minutes`: planned available production time (480 minutes per shift).

### fact_downtime_events
- `downtime_event_id`: downtime event identifier.
- `production_run_id`: related production run.
- `downtime_reason`: reason category.
- `downtime_minutes`: duration of the event in minutes.

## Suggested relationships
- `fact_production_runs[machine_id]` → `dim_machines[machine_id]`
- `fact_production_runs[product_id]` → `dim_products[product_id]`
- `fact_production_runs[line_id]` → `dim_lines[line_id]`
- `fact_downtime_events[production_run_id]` → `fact_production_runs[production_run_id]`

## Data-quality exercises
The production fact intentionally includes a small number of seeded issues:
- one missing planned quantity,
- one negative produced quantity,
- one inconsistent good quantity,
- one unknown product key (`P99`),
- one duplicate production run ID.

Find, document, and decide how to handle these before KPI reporting.
