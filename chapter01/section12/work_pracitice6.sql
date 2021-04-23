SELECT
  referer, 
  count(*)
FROM 
  access_log 
WHERE
  access_date >= '2013-01-01'
GROUP BY 
  referer
HAVING
  count(*) < 5
ORDER BY
  count(*) DESC
;
