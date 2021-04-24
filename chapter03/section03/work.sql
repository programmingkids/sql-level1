INSERT INTO
    usr
  (
    user_id,
    l_name,
    f_name,
    email
  )
  SELECT
    s_id,
    l_name,
    f_name,
    'admin@wings.msn.to'
  FROM
    employee
  WHERE
    last_update >= '2012-01-01'
;
