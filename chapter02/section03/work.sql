SELECT
  cc.c_title,
  cn.c_title
FROM
  contents AS cc
INNER JOIN
  contents AS cn
ON
  cc.next_id = cn.c_id
ORDER BY
  cc.c_id ASC
;
