SELECT
  *
FROM 
  rental 
WHERE 
  returned=0 
AND 
  rental_date < '2012-12-01' 
ORDER BY 
  rental_date DESC
;
