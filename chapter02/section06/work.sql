SELECT
  u.l_name_kana,
  u.f_name_kana
FROM
  usr AS u
UNION
SELECT
  e.l_name_kana,
  e.f_name_kana
FROM
  employee AS e
ORDER BY
  1,2
;
