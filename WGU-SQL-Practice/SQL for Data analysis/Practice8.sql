-- Selec Statment

SELECT population FROM world
  WHERE name = 'Germany';

SELECT * FROM table;

SELECT * FROM Album; -- this is a comment

/* this is also a comment, a c style comment*/

SELECT *  FROM Album WHERE Label = 'Columbia';

SELECT COUNT(*) FROM Album WHERE Label = 'Columbia';

SELECT Name, Population / 1000000 AS PopMM
    FROM Country
    WHERE Population >= 1000000
    ORDER BY Population DESC;



-- Select rows
SELECT 'Hello, World';

SELECT * FROM Country;

SELECT * FROM Country ORDER BY Name;

SELECT Name, LifeExpectancy FROM Country ORDER BY Name;

SELECT Name AS 'The Name', LifeExpectancy AS 'This be Life Expectancy' 
    FROM Country 
    ORDER BY Name;

SELECT COUNT(*) FROM Country ORDER BY Name;

SELECT * FROM Country ORDER BY Name LIMIT 5; -- only returns the first 5 rows

SELECT * FROM Country ORDER BY Name LIMIT 5 OFFSET 5; -- offset the first 5 and list from 5 to 10 as a limit.
-- offset must be after limit


-- Select columns

SELECT * from Country ORDER BY Code;

SELECT Name, Code, Region, Population from Country ORDER BY Code;

SELECT Name AS Country, Code AS ISO, Region, Population as Pop
    FROM Country ORDER BY Code;

