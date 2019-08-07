SELECT 0 = 1;

SELECT 0 = 0;

SELECT 0.0 = 0;

SELECT '0.1' = 0;

SELECT '0.1' > 0;

SELECT '0.1' < 0;

SELECT 0.1 < 0;

SELECT 9 != 7;

SELECT 9 >= 7;

SELECT 9 <= 7;

SELECT (9 > 7) AND (12 < 27);
-- true

SELECT (9 > 7) IS TRUE;

SELECT (9 > 7) OR  (12 < 27);
 -- true

SELECT (9 > 7) IS NOT TRUE;
 -- SELECT (9 > 7) IS FALSE;

SELECT 1 AND 1;

SELECT 1 OR 1;

SELECT 1 OR 0;

SELECT 1 xor 0;

SELECT 1 XOR 1;
-- false

SELECT 1 IS TRUE;  -- is true;

SELECT 1 IS NOT TRUE;

SELECT 1 IS NULL; -- false;

SELECT 1 IS NOT NULL; -- this will be true;

SELECT 0 IS NULL; -- false;

SELECT 0 IS NOT NULL; -- true;

SELECT NULL IS NULL;  -- true;

SELECT '' ISNOT NULL;  -- true;

SELECT 7 IN (1,5,9); -- false

SELECT 7 IN (1,5,7,9);  -- true

USE world;

SELECT Name AS 'Country', ROUND(Population / 1000000) AS 'PopMM' FROM  Country
WHERE Population > 50000000 AND Continent IN ( 'Asia', 'Europe') ORDER BY Population Desc;



