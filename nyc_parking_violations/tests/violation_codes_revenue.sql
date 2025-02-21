{{ config(severity = 'warn') }}
SELECT
  violation_code,
  SUM(fee_usd) AS total_revenue_usd
FROM {{ref('silver_parking_violation_codes')}}
GROUP BY 1
HAVING
  NOT (total_revenue_usd >= 1) -- Get all violation codes with no associated fee