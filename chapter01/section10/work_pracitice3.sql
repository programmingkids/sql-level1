SELECT 
  prefecture AS 都道府県名, 
  COUNT(*) AS ユーザ数 
FROM 
  usr 
GROUP BY 
  prefecture
;
