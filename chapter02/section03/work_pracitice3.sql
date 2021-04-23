SELECT
  CONCAT(e.l_name ,e.f_name) AS 社員氏名,
  CONCAT(eu.l_name ,eu.f_name) AS 上司氏名
FROM
  employee AS e
LEFT JOIN
  employee AS eu
ON
  e.b_id = eu.s_id
ORDER BY
  e.s_id ASC
;
