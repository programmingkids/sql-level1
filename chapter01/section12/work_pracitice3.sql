SELECT
  author_id,
  COUNT(isbn)
FROM
  author_books
GROUP BY
  author_id
HAVING
  COUNT(isbn) >= 3
;
