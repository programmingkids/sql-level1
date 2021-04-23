SELECT
  s_id, 
  s_name
FROM
  shop
WHERE
  s_id
NOT IN
  (
  SELECT
    s_id
  FROM 
    sales
  WHERE
    s_date='2012-12'
  )
;
