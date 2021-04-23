SELECT 
  publish, 
  AVG(price)
FROM 
  books 
GROUP BY
  publish
;
