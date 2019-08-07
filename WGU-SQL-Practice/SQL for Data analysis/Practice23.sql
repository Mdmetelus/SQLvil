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

USE album;

SELECT t.title AS 'Track', t.track_number AS 'Track no', a.title As 'Album', a.artist As 'Artist', t.duration As 'Seconds'
FROM Album As a Join Track As t ON t.album_id = a.album_id
WHERE t.duration > 120 And t.track_number > 3 ORDER BY t.duration DESC;

SELECT 5 + 3; --- 8;

SELECT 5 - 3; -- 2;

SELECT 5 * 3; -- 15;

SELECT 5 / 3; --1.667;

SELECT 5 DIV 3; -- 1, divided unincluding the remainder, 1;

SELECT 5 % 3; -- remainder only, 2;

SELECT 5 MOD 3; -- remainder only, 2;

SELECT 5 / 0; -- NULL as the result;

SELECT 5 + 6 * 7 - 8;  -- 39

SELECT (5 + 6) * (7 - 8); -- -11

SELECT 5 + (6 * 7) - 8; -- 39

USE scratch;

DROP TABLE IF EXISTS booltest;

CREATE TABLE booltest (a INTEGER, b INTEGER);

INSERT INTO booltest VALUES (1, 0);

SELECT * FROM booltest;
