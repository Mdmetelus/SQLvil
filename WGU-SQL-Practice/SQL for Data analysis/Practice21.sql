
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

