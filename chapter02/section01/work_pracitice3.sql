SELECT
  sh.s_name,
  SUM(sl.s_value)
FROM
  sales AS sl
INNER JOIN
  shop AS sh
ON
  sl.s_id = sh.s_id
WHERE
  sl.s_date BETWEEN '2012-01' AND '2012-12'
GROUP BY
  sh.s_id,
  sh.s_name
ORDER BY
  SUM(sl.s_value) ASC
;
