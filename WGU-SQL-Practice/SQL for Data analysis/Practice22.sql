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

SELECT COUNT(*) FROM COUNTRY;



