SELECT
  u.l_name,
  u.f_name,
  COUNT(r.id)
FROM
  rental AS r
INNER JOIN
  usr AS u
ON
  r.user_id=u.user_id
WHERE
  r.returned=0
GROUP BY
  r.user_id,
  u.l_name,
  u.f_name
HAVING
  COUNT(r.id)>0
ORDER BY
  COUNT(r.id) DESC
;
