SELECT
  o.order_date AS 発注日,
  o.po_id AS 注文コード,
  CONCAT(u.l_name ,u.f_name) AS 利用者氏名,
  p.p_name AS 商品名,
  p.price AS 商品単価,
  od.quantity AS 購入数
FROM
  (
    (
      order_main AS o
    INNER JOIN
      order_desc AS od
    ON
      o.po_id = od.po_id
    )
  INNER JOIN
    product AS p
  ON
    od.p_id = p.p_id
  )
INNER JOIN
  usr AS u
ON
  o.user_id = u.user_id
WHERE
  o.delivery_date IS NULL
ORDER BY
  o.order_date ASC,
  o.po_id ASC,
  od.p_id ASC
;
