UPDATE
  employee
SET
  depart_id='Z99'
WHERE
  NOT EXISTS
  (
    SELECT
      *
    FROM
      depart
    WHERE
      depart.depart_id=employee.depart_id
  )
;
