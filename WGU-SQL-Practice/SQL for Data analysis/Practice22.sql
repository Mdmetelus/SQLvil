SELECT * FROM table;

SELECT * FROM Album; -- this is a comment;

SELECT * FROM Album WHERE Label = 'Columbia';

SELECT COUNT(*) FROM Album WHERE Label = 'Columbia';

SELECT Name, Population / 1000000 AS PopMM FROM Country
WHERE Population >= 1000000 ORDER BY Population DESC;

--

USE world;

SELECT 'Hello World';

SELECT 1 + 2;

SELECT * FROM Country;

SELECT * FROM Country ORDER BY Name;

SELECT Name, Life Expectancy AS 'Life Expectancy' FROM Country ORDER BY Name;

SELECT COUNT(*) FROM Country ORDER BY Name;

SELECT * FROM Country ORDER BY Name LIMIT 5;

SELECT * FROM Country ORDER BY Name LIMIT 5, 5;

USE world;

SELECT * FROM Country ORDER BY Code;

SELECT Name, Code, Region, Population FROM Country ORDER BY Code;

SELECT Name AS Country, Code AS ISO, Region, Population AS Pop FROM Country ORDER BY Code;

USE world;

SELECT COUNT(*) FROM Country
WHERE Population > 10000000;

SELECT COUNT(*) FROM Country WHERE Population > 10000000 AND Continent = 'Europe';

SELECT COUNT(LifeExpectancy) FROM Country;

USE scratch; -- scratch database

SELECT * FROM customer;

INSERT INTO customer (name, address, city, state, zip) VALUES 
('Fred Flinstone', '123 Cobblestone Way', 'Bedrock','CA', '91234');

SELECT * FROM customer;

INSERT INTO customer (name, city, state) VALUES ('Jimi Hendrix', 'Renton', 'WA');

SELECT * FROM customer;

SELECT * FROM customer WHERE name LIKE 'Jimi%';

UPDATE customer SET address = '123 Music Avenue', Zip = '98056'
WHERE name LIKE 'Jimi%';

SELECT * FROM customer WHERE name LIKE 'Jimi%';

UPDATE customer SET address = '987 Mockingbird Lane' WHERE name LIKE 'Jimi%';

SELECT * FROM customer WHERE name LIKE 'Jimi%';

UPDATE customer SET address = NULL WHERE name LIKE 'Jimi%';

SELECT * FROM customer WHERE name LIKE 'Jimi%';

USE scratch;

CREATE TABLE test ( a INT, b VARCHAR(16), c VARCHAR(16) );
INSERT INTO test VALUES (1,'this', 'right here!');
INSERT INTO test VALUES (2, 'that', 'over there!');
INSERT INTO test VALUES (3, 'another', 'nowhere.');
INSERT INTO test VALUES (4, 'again', 'guess where?');
INSERT INTO test VALUES (1,'one more', 'everywhere!');

SELECT * FROM test;

SELECT * FROM test WHERE a = 2;

DELETE * FROM test WHERE a = 2;

SELECT * FROM test;

SELECT * FROM test WHERE a = 1;

DELETE  FROM test WHERE a = 1;

SELECT * FROM test;

DROP TABLE test;

SELECT * FROM customer;

SELECT * FROM customer WHERE name LIKE 'Jimi%' OR name LIKE 'Fred%';

DELETE FROM customer WHERE name LIKE 'Jimi%' OR name LIKE 'Fred%';

SELECT * FROM customer;

USE album;

SELECT * FROM track;

SELECT * FORM album;

SELECT a.artist AS Artist, a.title AS Album, t.track_number AS 'Track Num', 
t.title AS Track, t.duration AS Seconds
FROM album AS a Join track AS t
ON a.id = t.album_id
ORDER BY a.artist, a.title, t.track_number;

USE scratch;

SHOW DATABASES;

SHOW TABLES;

DESCRIBE customer;

USE scratch;

CREATE TABLE test (
    id INT,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state CHAR(2),
    zip CHAR(10)
);

DESCRIBE test;

SHOW TABLE STATUS;

SHOW CREATE TABLE test;

CREATE TABLE `test` (
    `id` int(11) DEFAULT NULL,
    `name` VARCHAR(255) DEFAULT NULL,
    `address` VARCHAR(255) DEFAULT NULL,
    `city` VARCHAR(255) DEFAULT NULL,
    `state` CHAR(2) DEFAULT NULL,
    `zip` CHAR(10) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE test;

DROP TABLE IF EXISTS test;

DESCRIBE test;

USE scratch;

DESCRIBE numerics;

SELECT * FROM numerics;

SELECT da + db, fa + fb FROM numerics;

SELECT da + db = 0.3 FROM numerics;

SELECT da + db FROM numerics;

SELECT fa + fb FROM numerics;

SELECT fa + fb = 0.3 FROM numerics;

SELECT fa +fb, fa + fb = 0.3 FROM numerics;

 -- Date and time types;

USE scratch;

SELECT NOW();

SHOW VARIABLES LIKE '%time_zone%';

SET time_zone = '+00:00'; -- SHIFFT to UTC GME or whereevr you are.
SELECT NOW();

SET time_zone = 'SYSTEM';
SELECT NOW();

SELECT UTC_TIMESTAMP();

DROP TABLE IF EXISTS temp;

CREATE TABLE temp (
    id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
    stamp TIMESTAMP,
    name VARCHAR(64)
);

INSERT INTO temp (name) VALUES ('this');
INSERT INTO temp (name) VALUES ('that');
INSERT INTO temp (name) VALUES ('other');

CREATE TABLE temp1 (
    id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
    stamp DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    name VARCHAR(64)
);

INSERT INTO temp1 (name) VALUES ('this');
INSERT INTO temp1 (name) VALUES ('that');
INSERT INTO temp1 (name) VALUES ('other');


USE scratch;

DROP TABLE IF EXXISTS test;

CREATE TABLE test (
    id INT UNSIGNED UNIGUE AUTO_INCREMENT PRIMARY KEY,
    a ENUM('Pablo', 'Henri', 'Jackson')
);

INSERT INTO test ( a ) VALUES ('Pablo');
INSERT INTO test ( a ) VALUES ('Henri');
INSERT INTO test ( a ) VALUES ('Jackson');

INSERT INTO test ( a ) VALUES (1);
INSERT INTO test ( a ) VALUES (2);
INSERT INTO test ( a ) VALUES (3);

SELECT * FROM test;

DROP TABLE IF EXISTS test;

CREATE TABLE test (
    id INT UNSIGNED UNIGUE AUTO_INCREMENT PRIMARY KEY,
    a SET('Pablo', 'Henri', 'Jackson')
);

INSERT INTO test ( a ) VALUES ('Pablo');
INSERT INTO test ( a ) VALUES ('Henri');
INSERT INTO test ( a ) VALUES ('Jackson');
INSERT INTO test ( a ) VALUES ('Pablo,Jackson,Henri,Henri,Henri');

INSERT INTO test ( a ) VALUES (1);
INSERT INTO test ( a ) VALUES (2);
INSERT INTO test ( a ) VALUES (3);
INSERT INTO test ( a ) VALUES (4);
INSERT INTO test ( a ) VALUES (5);
INSERT INTO test ( a ) VALUES (6);
INSERT INTO test ( a ) VALUES (7);

SELECT * FROM test;

USE scratch;

DROP TABLE IF EXISTS test;

CREATE TABLE test (
    id INT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
    a VARCHAR(32)
);

INSERT INTO test ( a ) VALUES ('Pablo');
INSERT INTO test ( a ) VALUES ('Henri');
INSERT INTO test ( a ) VALUES ('Jackson');

SELECT * FROM test;

DESCRIBE test;

SHOW CREATE TABLE test;

DROP TABLE IF EXISTS test;

USE scratch;

DROP TABLE IF EXISTS test;

CREATE TABLE test (
    id SERIAL,
    a VARCHAR(32)
);

INSERT INTO test ( a ) VALUES ('Pablo');
INSERT INTO test ( a ) VALUES ('Henri');
INSERT INTO test ( a ) VALUES ('Jackson');

SELECT * FROM test;

DESCRIBE test;

SHOW CREATE TABLE test;

DROP TABLE IF EXISTS test;

CREATE TABLE `test2` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `a` VARCHAR(32) DEFAULT NULL,
    UNIQUE KEY `id` (id)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
