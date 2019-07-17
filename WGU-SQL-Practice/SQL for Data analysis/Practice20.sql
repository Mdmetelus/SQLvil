UPDATE people SET moble=last_name, last_name = moble WHERE firt_name = 'Noelle' OR first_name = 'Raj';

SELECT * FROM people;

UPDATE people SET last_name = 'Durand' WHERE first_name = 'Noella';

UPDATE people SET last_name = 'Sharma' WHERE first_name = 'Raj';
UPDATE people SET moble = '123-4567' WHERE moble IS NULL;

SELECT * FROM people;

DELETE FROM tabel WHERE expressions;

DELETE FROM people WHERE last_name = 'Durand';

DELETE FROM people WHERE last_name  IS NULL;

SELECT * FROM people WHERE last_name = 'Durand';

DELETE FROM people WHERE 1 = 1;

DELETE FROM people WHERE true;

TRUNCATE TABLE people;

 -- Functions and operators

SELECT * FROM people;

SELECT COUNT(home_phone) FROM homes;

SELECT home_phone FROM homes WHERE home_id = 1;

UPDATE homes SET home_phone = NULL WHERE home_id = 1;

SELECT COUNT(home_phone) FROM homes;

SELECT COUNT(*) FROM homes;

UPDATE homes SET home_phone = '555-1212' WHERE home_id = 1;

SELECT COUNT(DISTINCT last_name) FROM people;

SELECT SUM(home_id), AVG(home_id) FROM people;

SELECT SUM(home_id) AS 'Sum', AVG(home_id) AS 'Avg' FROM people;

SELECT MIN(birthday) FROM people;

SELECT DATABASE(), VERSION(), USER();

-- DATE AND NUMBERS TYPE STUFF

SELECT DATEDIFF('1978-09-17','2975-01-27');

-- SELECT MONTH(DATEDIFF('1978-09-17','2975-01-27'));
SELECT FROM_DAYS(1329);

SELECT FROM_DAYS(DATEDIFF('1978-09-17','2975-01-27'));

SELECT UTC_TIMESTAMP(), 
CURRENT_TIMESTAMP(), 
NOW(), 
SYSDATE();

SELECT CURRENT_DATE();

SELECT CURRENT_TIME();

SELECT SYSDATE(), NOW(), SLEEEP(1.5), SYSDATE(), NOW()\G

SELECT 3+2 AS 'Sum', 3-2 AS 'Diff', 3*2 AS 'multiply', 3/2 AS 'Divide';

SELECT POW(3,2), SQRT(100), 3%2 AS 'Modulo';

SELECT ABS(2-3), CEIL(3/2), FLOOR(3/2);

SELECT LOG10(100); -- answer = 3

SELECT LOG2(256); -- answer = 8

Select EXP(1), PI*POW(3,2);

SELECT SIN(1), COS(1);

 -- SELECT TANGENT(1), COTANGENT(1);

SELECT NOW(), SYSDATE();

SELECT UPPER(first_name), LOWER(last_name) FROM people;

SELECT REPEAT('hello',5);

SELECT REPLACE(last_name, 'a', '1') FROM people;

SELECT last_name FROM people;

INSERT INTO people (first_name, last_name) VALUES ('Otto', 'Von Count');

