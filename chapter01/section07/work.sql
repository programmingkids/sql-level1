SELECT
  answer1,
  answer2
FROM
  quest
WHERE
    answer2 IS NOT NULL
  AND
    answer2 <> ''
ORDER BY
  answer1 ASC
;
