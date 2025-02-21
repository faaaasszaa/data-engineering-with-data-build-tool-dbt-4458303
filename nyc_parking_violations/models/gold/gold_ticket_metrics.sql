SELECT
  violation_code,
  COUNT(DISTINCT summons_number) AS ticket_count,
  SUM(fee_usd) total_revenue_usd
FROM {{ref('silver_violation_tickets')}}
GROUP BY 1
ORDER BY 3 DESC