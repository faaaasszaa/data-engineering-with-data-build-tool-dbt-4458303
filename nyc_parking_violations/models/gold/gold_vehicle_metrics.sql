SELECT 
  registration_state,
  COUNT(DISTINCT summons_number) ticket_count
FROM {{ref('silver_violation_vehicles')}}
WHERE registration_state != 'NY'
GROUP BY 1
ORDER BY 2 DESC