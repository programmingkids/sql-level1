SELECT 
  CONCAT('ISBN',isbn) AS ISBNコード,
  title AS 書名, 
  DATE_FORMAT(publish_date,'%Y年%m月%d日') AS 刊行日
FROM
  books
;
