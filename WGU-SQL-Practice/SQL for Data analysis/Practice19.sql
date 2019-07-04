SHOW DATABASES;

SHOW TABLES FROM information_schema;

USE information_schema;

SHOW TABLES;

USE information_schema;

SHOW COLOMNS FROM SCHEMATA;

USE mysql;

SHOW COLOMNS FROM SCHEMATA;

SHOW COLOMNS FROM information_schema.SCHEMATA;

SHOW COLOMNS FROM mysql.help_topics;

SHOW COLOMNS FROM information_schema.GLOBAL_VARIABLES;

SHOW COLOMNS FROM information_schema.SCHEMATA;

CREATE DATABASE my_database;

SHOW COLOMNS FROM information_schema.COLOMNS;

USE myql;

SHOW COLUMNS FORM help_topic;

SHOW COLOMNS FROM slow_log;

SHOW COLOMNS FROM information_schema;

CREATE DATABASE my_new_database;

CREATE DATABASE IF NOT EXIST my_new_database;

SHOW WARNINGS;

CREATE DATABASE IF NOT EXIST another_new_db DEFAULT CHARACTER SET utf8;

SHOW COLLATION LIKE 'latin1%';

DROP DATABASE IF EXIST another_new_db

SHOW WARNINGS;

DROP DATABASE another_new_db;

SHOW CREATE TABLE;

SHOW CREATE TABLE help_category/g -- \g same as; 
 -- there is also a line/statment terminator with \G \g ;

CREATE DATABASE addresses;

DROP TABLE IF EXISTS people;

CREATE TABLE people (
    first_name varchar(50) NOT NULL DEFAULT '',
    last_name varchar(50) NOT NULL DEFAULT '',
    mobile varchar(20) NOT NULL DEFAULT '',
    birthday date DEFAULT NULL,
    PRIMARY KEY (first_name, last_name, birthday)
);

ALTER TABLE people DROP PRIMARY KEY, ADD PRIMARY KEY(first_name, last_name, birthday);

SELECT TABLE_NAME 
FROM information_schema
WHERE table_shema = 'my_database';

SELECT TABLE COMMENT FROM TABLES;

USE information_schema;

SHOW CREATE TABLE people\g

INSERT INTO people (birthday, first_name, last_name, mobile) 
VALUES ( '1996-05-27', 'Paul', 'Thompson', '586-7987');

INSERT INTO people 
SET last_name='Durand', first_name = 'Camille', mobile = '871-5719', birthday = '1970-03-23';

SELECT * FROM people;

INSERT INTO people (first_name, last_name, mobile, birthday) VALUES ( 'Priya', 'Sharma', '474-5391','1979-12-04');

SELECT 'Priya', 'Sharma', '474-5391','1979-12-04';

SHOW CREATE TABLE people \G 

INSERT INTO people (first_name, last_name, mobile) VALUES ('Sheeri', 'Cabral', '121-5555');

INSERT INTO people (first_name, last_name, mobile) 
VALUES ('Tony', 'Cabral', '121-6644'), ('John', 'Smith', '653-1210');

INSERT INTO people VALUES ('Noelle', 'Durand', '395-6161','1960-07-06');

INSERT INTO people (first_name, last_name, mobile, birthday) VALUES ('Raj','Sharma', '168-5223', '1980-08-31');

SELECT first_name FROM people;

SELECT * FROM people;

UPDATE table SET;

UPDATE people SET birthday='1975-01-27' WHERE first_name = 'Tony' AND last_name = 'Cabral';

UPDATE people SET birthday = 1978-09-17 WHERE birthday = '000-00-00';

UPDATE people SET mobile = last_name, last_name = moble WHERE first_name = 'Noelle' OR first_name = 'Raj';

UPDATE people SET last_name = 'Durand' WHERE first_name = 'Noelle';

UPDATE people SET last_name = 'Sharma' WHERE first_name = 'Raj';

SELECT last_name FROM people;

DELETE FROM people WHERE first_name = 'expression';

DELETE FROM people WHERE last_name = 'Durand';

DELETE FROM people WHERE true;

TRUNCATE TABLE people;

SHOW CREATE TABLE people\G


 -- 
 USE addresses

 DROP TABLE IF EXISTS people;

 CREATE TABLE people (
     first_name varchar(50) NOT NULL DEFAULT '',
     last_name varchar(50) NOT NULL DEFAULT '',
     mobile varchar(20) NOT NULL DEFAULT '',
     birthday DATE DEFAULT NULL,
     PRIMARY KEY (first_name, last_name, birthday)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;

 USE addresses;

INSERT INTO people (first_name, last_name, mobile, birthday ) 
VALUES 
('Sheeri', 'Cabral', '121-5555', '1978-09-17'),
('Tony', 'Cabral', '121-6666', '1975-01-27'),
('John', 'Smith', '653-1210', '1998-04-07'),
('Paul', 'Thompson', '586-7987', '1996-05-27');

INSERT INTO people (first_name, last_name, mobile, birthday ) 
VALUES 
('Camille', 'Durand', '871-5719', '1970-03-23'),
('Noelle', 'Durand', '395-6161', '1960-07-06'),
('Raj', 'Sharma', '168-5223', '1980-08-31'),
('Priiya', 'Sharma', '474-5391', '1979-12-04');

SELECT * FROM people;

ALTER TABLE people ADD COLUMN home_id SMALLINT UNSIGNED DEFAULT NULL;

CREATE TABLE homes (
    home_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    addresses VARCHAR(100) NOT NULL DEFAULT '',
    home_phone VARCHAR(20) DEFAULT NULL,
    PRIMARY KEY (home_id),
    UNIQUE KEY (address)
)ENGINE = InnoDB DEFAULT CHARSET=utf8

INSERT INTO homes (home_phone, address) VALUES
('555-1212', '123 MAin street, Boston MA'),
('339-8482', '500 College ave, Boston MA'),
('485-2390', '10 Warf Road, Provincetown MA'),
('626-5976', '2 Harrison Street, San FRancisco CA');

SELECT * FROM homes;

UPDATE people SET home_id = 1 WHERE last_name = 'Cabral';

UPDATE people SET home_id = 2 WHERE last_name = 'Smith';

UPDATE people SET home_id = 3 WHERE last_name = 'Durand';

Update people SET home_id = 4 WHERE last_name = 'Sharma'
