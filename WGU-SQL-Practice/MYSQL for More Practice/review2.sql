SELECT * FROM users WHERE age = 'Bob';
SELECT * FROM users WHERE age > 30 AND name = 'Bob';
SELECT * from users where age < 30 AND id >= 10 AND name like '%o%';
SELECT * from users WHERE name like '%a%' AND name IS NOT NULL;

SELECT * FROM users WHERE name is NULL;

SELECT * FROM users WHERE name = 'Sam';

SELECT * FROM users WHERE (age < 20 OR age > 10) AND name LIKE '%a%';

SELECT * FROM users WHERE age < 20 OR (age > 10 AND name LIKE '%a%');

SELECT * FROM users WHERE age IS NOT 20;

SELECT * FROM users WHERE age <> 30;

SELECT * FROM users WHERE age != 40 or age <> 30;

SELECT * FROM users WHERE NOT ((age<20) OR (age >= 39));

SELECT count(*) FROM users WHERE NOT ((age<20) OR (age >= 39));
SELECT count(*) FROM users WHERE ((age<20) OR (age >= 39))


-- EXCUSIVE OR(xor) = 
-- (xor) = situations where either one of 2 conditions apply but not both nor neither:


SELECT * from users WHERE name = 'Bob';

SELECT * FROM users WHERE age > 30;
SELECT * FROM users WHERE age > 30 OR name = 'Bob';

SELECT * FROM users WHERE age > 30 XOR name = 'Bob';

SELECT * FROM users WHERE age  < 30 XOR age > 20;

SELECT count(*) FROM users WHERE age  < 30;
SELECT count(*) from users WHERE name = 'Bob';

-- Exercizes:

SELECT * FROM users WHERE  age > 20 AND age < 30;

SELECT * FROM users WHERE age >= 20 AND age <= 30;

SELECT * FROM users WHERE (age >= 20 and age <= 30) AND name IS NOT 'Vicky';

SELECT * from users where name IS NULL OR '%e%'NOT IN name;

SELECT * FROM users WHERE (name LIKE '%e%' or name LIKE '%o%') AND age BETWEEN 30 AND 40;

SELECT * FROM users WHERE name like '%o%' XOR id < 5;

-- exerceze finised;


SELECT * FROM users WHERE name LIKE '%on'; -- end in ON;

SELECT * FROM users WHERE name Like '_a%me'; -- second letter A, and ends with me;
SELECT * FROM users WHERE id < 20 ORDER BY id LIMIT 10;

SELECT * FROM users WHERE name like 'Ma%';
SELECT count(*) FROM users WHERE name like '%b%';

-- CRUD
-- CREATE, RETRIEVE, UPDATE, DELETE;

UPDATE users SET name = 'Micky' WHERE name = 'Vicky';

CREATE TABLE person( id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	firstname VARCHAR(30) NOT NULL,
	lastname VARCHAR(60) NOT NULL,
	address VARCHAR(70), 
	zipcode CHAR(7), 
	phonenumber CHAR(11) NOT NULL
	)engine=InnoDB;
	
CREATE TABLE test(zip_code CHAR(7), name VARCHAR(30));

DROP TABLE test;

CREATE TABLE test(zip_code CHAR(7), name VARCHAR(30));

INSERT INTO test (zip_code, name) VALUES ('ky159tz','John Purcell');

SELECT * FROM test;


-- Floating point types:
--
DROP TABLE test;

CREATE TABLE test (width float);
INSERT INTO TEST (width) VALUES (12.34);

SELECT * FROM test;

DROP TABLE test;
CREATE TABLE test(stuff decimal(4,2);

insert into test (stuff) values (12.3);
insert into test (stuff) values (123.4); -- will cause an error only 2 digits before the decimal.
insert into test (stuff) values (12.334); -- will also give you an error.
insert into test (stuff) values (1.34);
insert into test (stuff) values (-61.34); -- it will work fine witht the addition of a negative sign.

-- BIT TYPE
--

CREATE TABLE test( bitfield bit(4));
INSERT INTO test(bitfield) VALUES (b'1111');
INSERT INTO test(bitfield) VALUES (b'0110');
SELECT * from test;

SELECT bitfield FROM test; --
SELECT bin(bitfield) FROM test; -- bin will convert to binary.

-- bool type
--

CREATE TABLE protucts(product VARCHAR(100), availible bool default false);
DESC products;

-- bool is just tinyint(1), default set to 0;
INSERT INTO products (product, availble) VALUES ('electric dog froomer', TRUE);
INSERT INTO products (product, availble) VALUES ('electric dog froomer', 1);
--True and 1 mean the ame thing, 
-- 0 and false mean the same thing.
INSERT INTO products (product, availble) VALUES ('automatic fandagle', false);

SELECT * FROM products WHERE availible = TRUE;

SELECT * FROM products WHERE availible = False;

UPDATE products SET availible = true WHERE product = 'automatic fandangle';
SELECT * FROM products;
INSERT INTO products (product, availible) VALUES ('amazing gizmo',0);

