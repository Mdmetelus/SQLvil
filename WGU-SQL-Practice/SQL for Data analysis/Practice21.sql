
SELECT last_name, GROUP_CONCAT(moble SEPERATOR ' or ') FROM people WHERE last_name != 'Cabral' GROUP BY last_name HAVING COUNT(*) > 1;

SELECT first_name, birthday FROM people ORDER BY birthday;

SELECT first_name, last_name, birthday FROM people ORDER BY birthday DESC;

SELECT first_name, last_name FROM people ORDER BY last_name, first_name;

SELECT first_name, birthday FROM people ORDER BY birthday DESC LIMIT 5;

SELECT first_name, MONTHNAME(birthday) AS mon, birthday FROM people ORDER BY MONTH(birthday);

SELECT last_name, COUNT(*) FROM people GROUP BY last_name;

SELECT last_name, COUNT(*) FROM people GROUP BY last_name ORDER BY NULL;

SELECT first_name, birthday FROM people WHERE first_name IN ('Camile','John');

SELECT DATEDIFF('1998-04-07'. '1970-03-23');

SELECT FROM_DAYS(DATEDIFF('1998-04-07', '1970-03-23'));

SELECT LEFT(last_name,1) AS monogram, first_name FROM people;

SELECT LEFT(last_name,1) AS monogram, first_name FROM people GROUP BY last_name;

SELECT LEFT(last_name,1) AS monogram, GROUP_CONCAT(first_name SEPERATOR ' & ') AS names FROM people GROUP BY last_name HAVING COUNT(*) > 1 ORDER BY NULL;

SELECT LEFT(last_name,1) AS monogram, GROUP_CONCAT(first_name SEPERATOR ' & ') AS names FROM people GROUP BY last_name HAVING COUNT(*) > 1 ORDER BY first_name DESC;

SELECT LEFT(last_name,1) AS monogram, first_name AS names FROM people GROUP BY last_name HAVING COUNT(*) > 1 ORDER BY NULL;

SELECT home_id FROM people WHERE last_name = 'Sharma';

INSERT INTO people (first_name, last_name, birthday, home_id) VALUES ('John', 'Smith', '1998-04-07', 4), ('Maya', 'Wasserman', NULL, 4), ('Paul', 'Thompson', '1996-05-27',1);

SELECT * FROM people;

INSERT INTO people (first_name, last_name, birthday, home_id) VALUES 
('John', 'Smith', '1998-04-07', 4), ('Maya', 'Wasserman', NULL, 4), ('Paul', 'Thompson', '1996-05-27',1) 
ON DUPLICATE KEY UPDATE
home_id = VALUES(home_id);

INSERT INTO people (first_name, last_name, birthday, home_id) VALUES 
('John', 'Smith', '1998-04-07', 4), ('Maya', 'Wasserman', '0000-00-00', 4), ('Paul', 'Thompson', '1996-05-27',1) 
ON DUPLICATE KEY UPDATE
home_id = VALUES(home_id);

SELECT first_name, last_name, home_id FROM people;

INSERT INTO people (first_name, last_name, birthday, home_id) VALUES 
('John', 'Smith', '1998-04-07', 4), ('Maya', 'Wasserman', '0000-00-00', 4), ('Paul', 'Thompson', '1996-05-27',1) 
ON DUPLICATE KEY UPDATE
home_id = VALUES(home_id),
last_name=LEFT(mobile,3);

DELETE FROM people WHERE first_name = 'Maya';

REPLACE INTO people (first_name, last_name, birthday, home_id) VALUES ('John', 'Sharma', '1998-04-07',1), ('Paul', 'Sharna', '1996-05-27',4), ('Maya','Wasserman','0000-00-00',1)/c

INSERT IGNORE INTO people (first_name, last_name, birthday, home_id) VALUES ('Camille', 'Durand', '1970-03-23',4), ('Jack', 'Durand','1972-02-19',3);

SELECT * FROM people WHERE last_name = 'Durand';

INSERT IGNORE INTO homes (address)
VALUES ('1234 Broadway, New York City, NY' ), ( ' 123 Main Street, Boston MA'), ('1600 Pennsylvania Avenue, Washington DC');

SELECT * FROM homes;

REPLACE INTO homes (address) VALUES ('1234 Broadway, New York City, NY' ), ( ' 123 Main Street, Boston MA'), ('1600 Pennsylvania Avenue, Washington DC');

UPDATE people SET home_id = 9 WHERE home_id = 1;
