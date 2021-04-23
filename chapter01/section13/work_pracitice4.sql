SELECT
  author_id AS 著者ID,
  COUNT(isbn) AS カウント数,
  CASE
    WHEN count(*) >= 4 THEN '多い'
    WHEN count(*) >= 2 THEN '普通'
    ELSE '少ない'
  END AS 評価
FROM
  author_books
GROUP BY
  author_id
;
