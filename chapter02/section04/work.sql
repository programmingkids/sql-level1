SELECT
  b.title,
  a.name,
  b.publish_date
FROM
  (
    books AS b
  INNER JOIN
    author_books AS ab
  ON
    b.isbn = ab.isbn
  )
INNER JOIN
  author AS a
ON
  ab.author_id = a.author_id
WHERE
  b.publish='日経BP'
ORDER BY
  b.publish_date DESC
;
