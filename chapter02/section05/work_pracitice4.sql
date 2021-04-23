SELECT
  l_name,
  f_name
FROM
  usr
WHERE
  NOT EXISTS
    (
    SELECT
      *
    FROM
      rental
    WHERE
      rental.user_id=usr.user_id
    )
;
