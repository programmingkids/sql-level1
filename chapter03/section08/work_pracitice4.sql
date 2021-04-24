DELETE FROM
  books
WHERE
  isbn
IN
  (
    SELECT
      isbn
    FROM
      rental
    WHERE
      returned=9
  )
;
