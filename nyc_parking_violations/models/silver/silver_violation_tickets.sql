SELECT
  vl.summons_number,
  vl.registration_state,
  vl.vehicle_make,
  vl.plate_type,
  vl.issuer_code,
  vl.issuer_command,
  vl.violation_time,
  vl.violation_county,
  vc.definition,
  vl.is_manhattan_96th_st_below,
  vc.violation_code,
  vc.fee_usd
FROM {{ref('silver_parking_violations')}} as vl
LEFT JOIN {{ref('silver_parking_violation_codes')}} vc
  ON vl.violation_code = vc.violation_code
  AND vl.is_manhattan_96th_st_below = vc.is_manhattan_96th_st_below