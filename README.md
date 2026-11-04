# Manufacturing Operations Performance Analysis

A portfolio project demonstrating manufacturing KPI definition, data validation, root-cause analysis, and decision-ready reporting using SQL and Power BI.

> **Data note:** All data is synthetic and created for learning/portfolio purposes. It is not real company or factory data.

## Business questions
1. Which production lines and shifts have the lowest performance?
2. Where are scrap and rework rates highest?
3. What are the main contributors to downtime?
4. Which products or machines show recurring quality or reliability issues?
5. What actions could improve throughput, quality, and equipment availability?

## Tools
- SQL
- Power BI
- GitHub

## Project status
- [x] Synthetic dataset created
- [ ] Data validation and cleaning in SQL
- [ ] KPI definitions and calculations
- [ ] Root-cause analysis
- [ ] Power BI dashboard
- [ ] Business recommendations

## Files
See `DATA_DICTIONARY.md` for table grain, fields, and suggested relationships.

## Key Findings

The analysis identified several important manufacturing performance patterns:

- Machine M04 recorded the highest downtime, with 19,539 minutes.
- Mechanical Failure was the leading downtime reason, accounting for 13,639 minutes.
- Product P03 had the highest scrap rate at 4.09%.
- Production Line B had the lowest production yield at 94.41%.
- Overall production yield was 95.11%.
- Total validated downtime was 913.47 hours.

## Recommendations

Based on the findings, the following actions are recommended:

1. Investigate recurring mechanical failures on Machine M04.
2. Review preventive maintenance practices and equipment reliability.
3. Investigate the causes of higher scrap rates for Product P03.
4. Review production processes on Line B to identify yield improvement opportunities.
5. Monitor downtime, scrap rate, and production yield through regular KPI reporting.

## Data Quality

Data validation checks identified records with missing values,
invalid product references, inconsistent production quantities,
and orphan downtime events.

Invalid records were flagged and excluded from relevant validated
analysis rather than silently corrected or removed.

## Limitations

- The dataset is synthetic and does not represent real company data.
- Shift-level performance analysis was not included.
- Findings are based on the available sample dataset.
