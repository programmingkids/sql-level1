SET names utf8;

DROP DATABASE IF EXISTS workbook;

CREATE DATABASE workbook DEFAULT character SET utf8;

USE workbook;

CREATE TABLE monster (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    hp INT NOT NULL,
    mp INT NOT NULL,
    type VARCHAR(255) DEFAULT NULL
);

INSERT INTO monster (name, hp, mp, type) VALUES ('ファイヤードラゴン', 100, 20, '炎属性');
INSERT INTO monster (name, hp, mp, type) VALUES ('アイスドラゴン', 120, 30, '水属性');
INSERT INTO monster (name, hp, mp, type) VALUES ('サンダードラゴン', 140, 10, '雷属性');
INSERT INTO monster (name, hp, mp, type) VALUES ('スライム', 10, 10, '水属性');
INSERT INTO monster (name, hp, mp, type) VALUES ('ダークナイト', 80, 10, '闇属性');
INSERT INTO monster (name, hp, mp, type) VALUES ('ファイヤーゴブリン', 40, 30, '炎属性');
INSERT INTO monster (name, hp, mp, type) VALUES ('ファイヤーゴーレム', 1200, 80, '炎属性');
INSERT INTO monster (name, hp, mp, type) VALUES ('キングスライム', 400, 100, NULL);
INSERT INTO monster (name, hp, mp, type) VALUES ('マシンヘッド', 150, 100, NULL);

CREATE TABLE person (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    score INT NOT NULL,
    blood VARCHAR(255) NOT NULL,
    address VARCHAR(255) DEFAULT NULL
);

INSERT INTO person (name, age, score, blood, address) VALUES ('山田', 15, 90, 'A', '東京');
INSERT INTO person (name, age, score, blood, address) VALUES ('佐藤', 14, 86, 'B', '千葉');
INSERT INTO person (name, age, score, blood, address) VALUES ('田中', 13, 78, 'O', '東京');
INSERT INTO person (name, age, score, blood, address) VALUES ('山本', 16, 95, 'AB', '埼玉');
INSERT INTO person (name, age, score, blood, address) VALUES ('中村', 14, 92, 'A', '神奈川');
INSERT INTO person (name, age, score, blood, address) VALUES ('村上', 13, 84, 'A', '神奈川');
INSERT INTO person (name, age, score, blood, address) VALUES ('近藤', 15, 89, 'B', '東京');
INSERT INTO person (name, age, score, blood, address) VALUES ('太田', 14, 89, 'O', '千葉');
INSERT INTO person (name, age, score, blood, address) VALUES ('村田', 16, 94, 'A', NULL);
INSERT INTO person (name, age, score, blood, address) VALUES ('山下', 15, 96, 'A', NULL);

CREATE TABLE color (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO color (name) VALUES ('red');
INSERT INTO color (name) VALUES ('blue');
INSERT INTO color (name) VALUES ('green');
INSERT INTO color (name) VALUES ('purple');


CREATE TABLE food (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO food (name) VALUES ('Sushi');
INSERT INTO food (name) VALUES ('Pizza');
INSERT INTO food (name) VALUES ('Curry');

CREATE TABLE author (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO author (name) VALUES ('山田');
INSERT INTO author (name) VALUES ('佐藤');
INSERT INTO author (name) VALUES ('中村');
INSERT INTO author (name) VALUES ('鈴木');

CREATE TABLE book (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    author_id INT DEFAULT NULL 
);

INSERT INTO book (title, price, author_id) VALUES ('Python入門', 1000, 1);
INSERT INTO book (title, price, author_id) VALUES ('Java入門',   1200, 2);
INSERT INTO book (title, price, author_id) VALUES ('IT入門',     1300, 3);
INSERT INTO book (title, price, author_id) VALUES ('ゲーム入門', 1000, 2);
INSERT INTO book (title, price, author_id) VALUES ('AI入門',     1000, 1);
INSERT INTO book (title, price, author_id) VALUES ('SQL入門',    1200, NULL);

CREATE TABLE friend (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    address VARCHAR(255) NOT NULL
);

INSERT INTO friend (name, age, address) VALUES ('山田', 15, '東京');
INSERT INTO friend (name, age, address) VALUES ('鈴木', 16, '神奈川');
INSERT INTO friend (name, age, address) VALUES ('遠藤', 17, '東京');
INSERT INTO friend (name, age, address) VALUES ('大山', 15, '千葉');
INSERT INTO friend (name, age, address) VALUES ('山本', 16, '東京');
INSERT INTO friend (name, age, address) VALUES ('島田', 18, '神奈川');

CREATE TABLE teacher (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    lastname VARCHAR(255) NOT NULL,
    nenrei INT NOT NULL,
    address VARCHAR(255) NOT NULL
);

INSERT INTO teacher (lastname, nenrei, address) VALUES ('佐藤', 24, '神奈川');
INSERT INTO teacher (lastname, nenrei, address) VALUES ('太田', 26, '東京');
INSERT INTO teacher (lastname, nenrei, address) VALUES ('高山', 23, '東京');
INSERT INTO teacher (lastname, nenrei, address) VALUES ('下田', 25, '埼玉');
INSERT INTO teacher (lastname, nenrei, address) VALUES ('近藤', 29, '千葉');

CREATE TABLE company (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO company (name) VALUES ('K社');
INSERT INTO company (name) VALUES ('C社');
INSERT INTO company (name) VALUES ('SE社');

CREATE TABLE genre (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO genre (name) VALUES ('Action');
INSERT INTO genre (name) VALUES ('RPG');
INSERT INTO genre (name) VALUES ('Puzzle');
INSERT INTO genre (name) VALUES ('Shooting');

CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    pub_date DATE NOT NULL,
    company_id INT DEFAULT NULL,
    genre_id INT DEFAULT NULL
);

INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('スペースファイト', '2018-5-10', 1,4);
INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('ボブの冒険', '2019-5-27', 2,2);
INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('ドラゴンハンター',  '2019-12-23', 1,1);
INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('パズルモンスター',  '2018-10-19', 3,3);
INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('ボブとスコット',  '2019-1-20', 3,2);
INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('トムの野望',  '2020-3-25', 2,NULL);
INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('英雄伝',  '2018-9-2', NULL,NULL);
INSERT INTO product (title, pub_date, company_id, genre_id) VALUES ('シティーファイト', '2019-6-22', 2, NULL);

CREATE TABLE artist (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO artist (name) VALUES ('花輪太郎');
INSERT INTO artist (name) VALUES ('C\'z');
INSERT INTO artist (name) VALUES ('Masia');
INSERT INTO artist (name) VALUES ('鳥居坂56');

CREATE TABLE song (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    pub_date DATE NOT NULL,
    artist_id INT DEFAULT NULL
);

INSERT INTO song (title, pub_date, artist_id) VALUES ('夏の思い出', '2018-07-21', 3);
INSERT INTO song (title, pub_date, artist_id) VALUES ('サイクロンZ', '2019-03-10', 2);
INSERT INTO song (title, pub_date, artist_id) VALUES ('冬の道', '2018-10-15', 1);
INSERT INTO song (title, pub_date, artist_id) VALUES ('夏の山', '2019-07-15', 1);
INSERT INTO song (title, pub_date, artist_id) VALUES ('秋の月', '2019-09-30', 1);
INSERT INTO song (title, pub_date, artist_id) VALUES ('恋の爆弾', '2019-09-03', 2);
INSERT INTO song (title, pub_date, artist_id) VALUES ('春の思い出', '2019-08-12', 3);
INSERT INTO song (title, pub_date, artist_id) VALUES ('教室の隅', '2020-02-14', 4);

CREATE TABLE item (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    company_id INT DEFAULT NULL
);

INSERT INTO item (name, price, company_id) VALUES('鉛筆', 100, 3);
INSERT INTO item (name, price, company_id) VALUES('消しゴム', 120, 2);
INSERT INTO item (name, price, company_id) VALUES('ハサミ', 150, 2);
INSERT INTO item (name, price, company_id) VALUES('ノート', 100, 1);
INSERT INTO item (name, price, company_id) VALUES('ノリ', 200, NULL);
INSERT INTO item (name, price, company_id) VALUES('定規', 150, NULL);
INSERT INTO item (name, price, company_id) VALUES('コンパス', 350, 3);

CREATE TABLE school (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO school (name) VALUES ('A高校');
INSERT INTO school (name) VALUES ('B高校');
INSERT INTO school (name) VALUES ('C高校');

CREATE TABLE club (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO club (name) VALUES ('野球部');
INSERT INTO club (name) VALUES ('水泳部');
INSERT INTO club (name) VALUES ('演劇部');
INSERT INTO club (name) VALUES ('吹奏楽部');

CREATE TABLE student (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    school_id INT DEFAULT NULL,
    club_id INT DEFAULT NULL
);

INSERT INTO student (name, school_id, club_id) VALUES('山田', 2, 2);
INSERT INTO student (name, school_id, club_id) VALUES('佐藤', 1, 2);
INSERT INTO student (name, school_id, club_id) VALUES('田中', 3, 1);
INSERT INTO student (name, school_id, club_id) VALUES('鈴木', 3, 1);
INSERT INTO student (name, school_id, club_id) VALUES('太田', 2, 3);
INSERT INTO student (name, school_id, club_id) VALUES('上本', NULL, 4);
INSERT INTO student (name, school_id, club_id) VALUES('原口', NULL, NULL);

CREATE TABLE player (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    birthday DATE NOT NULL,
    job VARCHAR(255) NOT NULL
);

INSERT INTO player ( name, age, birthday, job ) VALUES ( '山田', 15, '2010-05-24', '勇者');
INSERT INTO player ( name, age, birthday, job ) VALUES ( '佐藤', 14, '2011-12-05', '魔法使い');
INSERT INTO player ( name, age, birthday, job ) VALUES ( '田中', 16, '2009-06-14', '戦士');

CREATE TABLE enemy (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    hp INT NOT NULL,
    mp INT NOT NULL,
    type VARCHAR(255) NOT NULL
);

INSERT INTO enemy ( name, hp, mp, type ) VALUES ('スライム', 10, 10, '水属性');
INSERT INTO enemy ( name, hp, mp, type ) VALUES ('闇の騎士', 30, 15, '闇属性');
INSERT INTO enemy ( name, hp, mp, type ) VALUES ('ダークゴブリン', 50, 20, '闇属性');
INSERT INTO enemy ( name, hp, mp, type ) VALUES ('ファイヤードラゴン', 300, 10, '火属性');
INSERT INTO enemy ( name, hp, mp, type ) VALUES ('アイスドラゴン', 200, 30, '水属性');
