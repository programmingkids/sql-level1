SELECT
  isbn,
  title,
  price
FROM
  books
WHERE
    publish IN ('日経BP','翔泳社')
  AND
    price >= 3000
;
