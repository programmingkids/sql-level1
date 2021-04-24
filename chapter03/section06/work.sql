UPDATE
  books
SET
  category_id='Z9999'
WHERE
  category_id
NOT IN
  (
    SELECT
      category_id
    FROM
      category
  )
;
