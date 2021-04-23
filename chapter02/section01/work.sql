SELECT
  e.l_name,
  e.f_name,
  d.depart_name,
  e.class
FROM
  employee AS e
INNER JOIN
  depart AS d
ON
  e.depart_id=d.depart_id
WHERE
  e.retired <> 1
ORDER BY
  e.depart_id ASC,
  e.s_id ASC
;
