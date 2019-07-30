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

