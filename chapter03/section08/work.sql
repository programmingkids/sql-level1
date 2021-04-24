DELETE FROM
  books
WHERE
  isbn
NOT IN
  (
    SELECT
      isbn
    FROM
      rental
    GROUP BY
      isbn
  )
;
