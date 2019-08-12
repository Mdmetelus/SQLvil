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

SELECT "name", "address" FROM customer;  -- double quotes are litteral strings; returns, name address;

SELECT `name`, `address` FROM customer; -- returns the name data and address data from the customer table;

SELECT `name`, `phone` FROM customer;

--

SELECT 47 / 3;  -- returns 15.6667;

SELECT DIV(47, 3); -- error in syntax;

SELECT 47 DIV 3;  -- correct method for integer division;

SELECT 47 MOD 3;  -- this give you the remainder of a division;

SELECT MOD(47, 3); -- will work for mod n this ;

SELECT 47 % 3; -- this will work too;

-- STANDARAD SQL COMMENTS;

/*STANDARD SQL COMMENT IN THE C TYLE ALSO WORKS FINE*/

/*

THIS  WORKS IN THE NULTILINE STYLE AS WELL.

*/

SELECT 'foo';

/*!

SELECT 'MY\ySQL executeable comment' AS 'Say What?!'

*/;

SELECT 1;

SELECT 1 /*! + 2 */; -- In my sql result will be 3 but in other database languages they will be only 1;