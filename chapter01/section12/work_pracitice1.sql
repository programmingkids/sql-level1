SELECT
  prefecture, AVG(age)
FROM
  quest
GROUP BY
  prefecture
HAVING
  AVG(age) BETWEEN 35 AND 49
;
