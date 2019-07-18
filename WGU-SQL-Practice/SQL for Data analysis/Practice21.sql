
SELECT last_name, GROUP_CONCAT(moble SEPERATOR ' or ') FROM people WHERE last_name != 'Cabral' GROUP BY last_name HAVING COUNT(*) > 1;

SELECT first_name, birthday FROM people ORDER BY birthday;

SELECT first_name, last_name, birthday FROM people ORDER BY birthday DESC;

SELECT first_name, last_name FROM people ORDER BY last_name, first_name;

SELECT first_name, birthday FROM people ORDER BY birthday DESC LIMIT 5;

SELECT first_name, MONTHNAME(birthday) as mon, birthday FROM people ORDER BY MONTH(birthday);

SELECT last_name, COUNT(*) FROM people GROUP BY last_name;

SELECT last_name, COUNT(*) FROM people GROUP BY last_name ORDER BY NULL;