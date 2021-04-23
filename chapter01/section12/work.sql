SELECT 
  prefecture, 
  AVG(answer1) AS 評価平均
FROM
  quest
GROUP BY
  prefecture
HAVING
  AVG(answer1)<2
;
