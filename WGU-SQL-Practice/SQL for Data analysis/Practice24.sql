SELECT LN(2);

SELECT LOG(2);

SELECT LOG(10, 100);  --  log of 1000 to the base of 10; 2;

SELECT LOG(2, 65535);  -- 15.99997798605; to the base 2;

SELECT LOG2(65535);  -- 

SELECT LOG10(100);  -- 2, base10;

SELECT EXP(1);

SELECT EXP(4); -- 54.598150033144

SELECT DEGREES(PI()); -- 180;

SELECT RADIANS(180); -- will be pi, 3.14159265358;

--

SELECT 'string1' || 'string2';  -- returns false, 0;

SELECT TRUE || FALSE;  -- retuns true, 1;

SELECT TRUE OR FALSE;  -- retuns true, 1;

SELECT CONCAT('string1', 'string2');

-- QUOTES

SELECT 'this is a string';

SELECT "this is a string";

USE scratch;

SELECT "name", "address" FROM customer;  -- returns, name address;

