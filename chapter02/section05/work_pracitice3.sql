SELECT
  sh.s_name,
  sl.s_value
FROM
  sales AS sl
INNER JOIN
  shop AS sh
ON
  sl.s_id=sh.s_id
WHERE
  sl.s_date='2012-12'
AND
  sl.s_value <
    (
    SELECT
      AVG(s_value)
    FROM
      sales
    WHERE
      s_date='2012-12'
    )
;
