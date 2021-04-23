SELECT 
  referer,
  count(*) AS カウント数,
  CASE
    WHEN count(*) >= 50 THEN 'A'
    WHEN count(*) >= 10 THEN 'B'
    ELSE 'C'
  END AS ランク
FROM
  access_log
GROUP BY
  referer
;
