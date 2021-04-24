DELETE FROM
  sales
WHERE
  s_id
NOT IN
  (
    SELECT
      s_id
    FROM
      shop
  )
;
