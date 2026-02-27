# DAY 4 - SQL Practice

This folder contains SQL practice queries covering UNION, GROUP BY, HAVING, and aggregate functions.

## Files

| File | Description |
|------|-------------|
| `patients_doctors_union_roles.sql` | Shows first name, last name, and role ('Patient' or 'Doctor') for every person using UNION ALL |
| `allergies_ordered_by_popularity.sql` | Lists all allergies ordered by count (popularity), excluding NULL values |
| `province_height_sum_above_7000.sql` | Shows province_id and total sum of patient heights where the sum is >= 7000 |
| `maroni_weight_difference.sql` | Shows the difference between the max and min weight for patients with last name 'Maroni' |
| `q1_placeholder.sql` | Placeholder — query not yet added |
| `q4_placeholder.sql` | Placeholder — query not yet added |
| `q5_placeholder.sql` | Placeholder — query not yet added |

## Concepts Practiced

- `UNION ALL` to combine result sets from multiple tables
- `GROUP BY` with aggregate functions (`COUNT`, `SUM`, `MAX`, `MIN`)
- `HAVING` clause for filtering grouped results
- Filtering with `WHERE ... IS NOT NULL`
- Calculating differences using `MAX() - MIN()`
