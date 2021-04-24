CREATE TABLE 
  quest
  (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    name_kana VARCHAR(255) NOT NULL,
    sex VARCHAR(5) NOT NULL,
    prefecture VARCHAR(10) NOT NULL,
    age INT DEFAULT 0,
    answer1 INT NULL,
    answer2 TEXT NULL,
    answered DATETIME NOT NULL,
    PRIMARY KEY (id)
  )
;
