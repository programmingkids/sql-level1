CREATE TABLE
  sales
  (
    s_id CHAR(7) NOT NULL,
    s_date DATE NOT NULL,
    s_value INT,
    PRIMARY KEY (s_id, s_date)
  )
;
