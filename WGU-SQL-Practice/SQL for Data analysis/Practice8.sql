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


-- Select columns

