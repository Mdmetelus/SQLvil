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

SELECT
    CASE WHEN a < 5 THEN 'true' ELSE 'false' END AS boolA,
    CASE WHEN b > 0 THEN 'true' ELSE 'false' END AS boolB
    FROM booltest
;

SELECT
    CASE WHEN a = 1 THEN 'true' ELSE 'false' END AS boolA,
    CASE WHEN b = 0 THEN 'true' ELSE 'false' END AS boolB
    FROM booltest
;

SELECT
    CASE WHEN a IS NOT NULL THEN 'false' ELSE 'true' END AS boolA,
    CASE WHEN b IS NOT NULL THEN 'false' ELSE 'true' END AS boolB
    FROM booltest
;

 -- ANOTHER WAY THE CREATE A CASE STATMENT;

SELECT
    CASE a WHEN 1 THEN 'true' ELSE 'false' END AS boolA,
    CASE b WHEN 1 THEN 'true' ELSE 'false' END AS boolB
    FROM booltest
;

DROP TABLE IF EXISTS booltest;

USE scratch;

DROP TABLE IF EXISTS booltest;

CREATE TABLE booltest (a INTEGER, b INTEGER);

INSERT INTO booltest values (1, 0);

SELECT * from booltest;

SELECT IF (A < 5, 'true', 'false') FROM booltest;

SELECT IF (b > 0, 'true', 'false') FROM booltest;

DROP TABLE IF EXISTS booltest;

USE world;

SELECT name FROM country WHERE name LIKE '_a%' ORDER BY name;

SELECT name FROM country WHERE STRCMP(name, 'France') <= 0 ORDER BY name;

USE world;

SELECT Name FROM country WHERE Name RLIKE 'y$' ORDER BY Name; -- this will give all the countries that end in the letter y;

SELECT Name FROM country WHERE Name RLIKE '[xy][ai]' ORDER BY Name; 
 -- countries with an x ory, followed by an a or i, in the name;

SELECT 'This' || 'and' || 'that';  -- this is the or operator; logical false

SELECT CONCAT('This', 'and', 'that');

SELECT CONCAT('Love', ' ', 'is', ' ', 'All', ' ', 'you', ' ', 'need!', ' ', 'Said', ' ', ' Jon', ' ', 'Lennon.');

SELECT CONCAT( 'one', ' ', 'plus', ' ', 'two');

SELECT CONCAT('one', 42);

SELECT CONCAT('one', 'two');

SELECT CONCAT(42, 42);

SELECT 32742;

SELECT HEX(32742);
 -- returnes the hex base number  7FE6;

SELECT OCT(32742);
 -- returns the OCT number 77746; base 8 no nubers higher than 7;

SELECT BIN(32742);
 -- returns the binary number 111111111100110;

SELECT CONV(32742, 10, 16); -- converting from base 10 to base 16;

SELECT CONV('7FE6', 16, 10); -- convert from base 16 back to base 10;

SELECT CONV(32742, 10, 24); -- convert from base 10 to base 24; 28k6;

SELECT CONV('28k6', 24, 10); -- convert from bas 24 back to base10;

USE scratch;

SELECT * FROM customer WHERE name LIKE '  BILL  SMITH  '; --  no reults;

SELECT * FROM customer WHERE name LIKE TRIM( '    Bill Smith    '); -- removes empty spaces from bothe the front and back of a string;

SELECT TRIM('  Bill Smith  ');

SELECT '   Bill Smith  ';

SELECT CONCAT(':', '   Bill Smith   ');

SELECT CONCAT(':', TRIM('   Bill Smith   '), ':'); -- eliminaes the spaces

SELECT CONCAT(':', LTRIM('   Bill Smith   '), ':');

SELECT CONCAT(':'TRIM('x' FROM 'xxxBill Smithxxxx'), ':'); -- eliminates the x's only, and specifically.

SELECT LPAD('Price', 20, '.'); -- adds 20 '.' to the left side of price

SELECT RPAD('Price', 20, '.'); -- adds 20 '.' to the right side of price

SELECT LPAD('Price', 10, '.'); 

SELECT RPAD('Price', 10, '.'); 

USE scratch;

SELECT UPPER(name) FROM customer;

SELECT UCASE(name) FROM customer;

SELECT LOWER(name) FROM customer;

SELECT LCASE(name) FROM customer;

SELECT CONCAT(UPPER(SUBSTRING(name,1,1)),LOWER(SUBSTRING(name,2))) FROM customer;

 -- substrings

SELECT SUBSTRING('this is a string', 6); -- returns = is a string;it starts at 1 not zero

SELECT SUBSTR('this is a string', 6, 4);  -- returns 4 characters beginning with the 6th character.;

SELECT SUBSTR('this is a string', -6); -- the last 6 characters in the string;

SELECT SUBSTRING_INDEX('this is a string', ' ', 1); -- returns = this;

SELECT SUBSTRING_INDEX('this is a string', ' ', 2); -- returns = this is;

SELECT SUBSTRING_INDEX('this is a string', ' ', -1); -- returns = string;

SELECT SUBSTRING_INDEX('this is a string', ' ', -2); -- returns = a string;

 -- sound x function

SELECT SOUNDEX('bill'), SOUDEX('bell');  --  B400 for both bill and bell; words that sound alike are indexed together;

SELECT SOUNDEX('ache'), SOUNDEX('ack');  -- A200, A200, same value for both;

SELECT SOUNDEX('acting'), SOUNDEX('action');  -- A2352, A2035, not the same value, ;

SELECT SUBSTR(SOUNDEX('actng'), 1, 4), SUBSTR(SOUNDEX('action'), 1, 4);   -- A235, A235, same value for both;

SELECT 'bill' SOUNDS LIKE 'boil', 'bill' SOUNDS LIKE 'phil';

 ---

SELECT ABS(-47); -- returns 47

SELECT ABS(-47.73);  -- 47.73;

SELECT CEILING(12.2); --  returns 13;

SELECT CEIL(12.3);  -- same as ceiling csil is an alias;

SELECT FLOOR(12.9); -- retturn 12; rounds down;

SELECT ROUND(17.5);  -- retuns 18; rounds up;

SELECT ROUND(17.4);  --  rounds down to 17;

SELECT TRUNCATE(42.973, 1);  -- limits to only 1 decimal place and cutsthe rest off; not rounded; 42.9;

SELECT TRUNCATE(65.9876, 2); --  returns 65.98;

SELECT TRUNCATE(99942.973, -2); -- truncates to the left of the decimal and substitutes 0 for truncated numbers.

-- simplt functions

SELECT PI(); -- returns 3.141593

SELECT PI() + 0.000000000000000;  -- returns 3.141592653589793;

SELECT POWER(8, 2); -- 8^2 = 64; returned 64;

SELECT POW(8, 2); -- 64;

SELECT SQRT(64); -- 8;

SELECT POWER(4096, 1/4); -- the 4th root of 4096 is 8;

SELECT RAND();

SELECT RAND(42);

SELECT SIN(2);  -- 0.9092974268256

SELECT ASIN(.2); 

SELECT COS(PI()); -- the cos of Pi, -1;

SELECT ACOS(.5);  -- 1.047197551196;

SELECT TAN(PI());  -- -1.224646799147353;

SELECT ATAN(PI()); 

SELECT ATAN(2); -- 1.107148717794;

SELECT COT(2);  -- 0.4576575543602;