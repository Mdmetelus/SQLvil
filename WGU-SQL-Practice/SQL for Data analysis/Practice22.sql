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


