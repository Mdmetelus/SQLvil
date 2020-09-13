-- RUNNING TRANSACTIONs;
-- START TRASACTIONS;
-----------------------
autocommit=1; -- automatically commited
USE test;
SELECT * FROM books;
UPDATE books SET name = 'The Valley' WHERE name = 4; 

START TRASACTION;
UPDATE books SET name = 'The Valley around us all' WHERE name = 4;
INSERT INTO books (name) VALUES ('More Valleys'),('The walls have eye\'s'); 
-- escape key \ ;


commit;
-- or  rollback;

START TRASACTIONS;
USE test;
SELECT * FROM books;
Commit;

USE test;
CREATE TABLE accounts (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	balance NUMERIC(10,2) DEFAULT 0 );
	
INSERT INTO accounts (balance) VALUES (1000.00), (1000.00), (8643.65), (345.12), (4422.11);
SELECT * FROM accounts;

START TRANSACTION;
SET @transfer = 200.00;

UPDATE accounts SET balance = balance - @transfer WHERE id = 1;
SELECT * FROM accounts WHERE id = 1;

UPDATE accounts SET balance = balance + @transfer WHERE id = 2;
SELECT balance FROM accounts WHERE id = 2;
commit;

START TRANSACTION;
SELECT * FROM accounts;
SET @withdraw = 500.00;
SET @ account = 1;

SELECT balance FROM accounts WHERE id = @account FOR UPDATE;

UPDATE accounts SET balance = balance - @withdraw WHERE id = @account;

COMMIT;
UPDATE account SET balance = 800.00 where id = 1;

USE test;
SHOW TABLES;
SELECT * FROM books;
SELECT * FROM libraries;
START TRANSACTION;
SELECT id FROM libraries WHERE name = 'Nottingham';
INSERT INTO libraries (title, library_id) VALUES ('Painting For Beginners', 2);
COMMIT;

DELETE FROM libraries WHERE id = 2;

-- MySQL FUNCTIONS------
-------------------------

USE test;
SHOW TABLES;
SELECT * FROM books;
SELECT count(*) FORM books;
SELECT title FROM books;

SELECT concat('Title: ', title) FROM books;
SELECT concat('My ', ' ', 'name is', ' ', 'Sam');

SELECT UCASE('Fred');
SELECT LCASE('Mike');
SELECT LEFT('England', 3); --
SELECT UCASE(left('United States', 4));
TRIM()
SUBSTR()
SELECT TRIM('   TIM   ');

SET @greating = 'Hello Bob... How are you?';
SELECT @greating;
SELECT substr(@greating, 7);
SELECT SUBSTR(@greating, 7, 3);
SELECT SUBSTR(@greating, 0, 10);

-- date time functions:
---------------------------

USE test;
CREATE TABLE dates (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	the_date DATE NOT NULL );
	
SELECT CURDATE();
SELECT CURTIME();
INSERT INTO dates (the_date) VALUES (CURDATE());
SELECT * FROM dates;

SELECT CURDATE() - INTERVAL 36 DAY;
SELECT DATE_ADD();
SELECT DATE_SUB('2010-06-16', INTERVAL 5 MONTH);
INSERT INTO dates (the_date) VAlUES( CURDATE() - INTERVAL 3 year);
INSERT INTO dates (the_date) VAlUES( CURDATE() - INTERVAL 5 year);
INSERT INTO dates (the_date) VAlUES( CURDATE() - INTERVAL 10 year);
INSERT INTO dates (the_date) VAlUES( CURDATE() + INTERVAL 3 DAY);
INSERT INTO dates (the_date) VAlUES( CURDATE() - INTERVAL 3 MONTH);

SELECT * FROM dates WHERE the_date < '2016-01-01';
SELECT * FROM dates WHERE the_date = '2011-02-08';
SELECT * FROM dates WHERE the_date < '2020-08-04';
SELECT id, day(SELECT * FROM dates WHERE the_date = '2016-01-01');
SELECT id, YEAR(SELECT * FROM dates WHERE the_date = '2016-01-01');
SELECT id, MONTH();
SELECT id, HOUR(); 
SELECT id, SECOND();
SET @born ='1974-05-19';
SELECT year(@born);
SELECT dayname(@born);
sELECT DATEDIFF(CURDATE(), @born); -- gives you a number of days;
SELECT FROM days(DATEDIFF(CURDATE(), @born);

str_to_date()
SELECT STR_TO_DATE('15/05/1988','%d/%m/%Y'); -- converts to th mysql date syntax;
SELECT STR_TO_DATE('15/05/1988','%d/%m/%Y') + interval 40 year;

SELECT date_format('2010-02-27', '%a %d %M \'%Y');
SELECT date_format('2020-09-20', '%W %d %M %Y');

-- CONTROL FLOW FUNCTIONS;
--------------------------
USE test;

SELECT if ( 6 > 9, 'Hello','Goodbye');
SELECT if ( 12 > 9, 'Hello','Goodbye');
SELECT if ( 6 = 9, 'Hello','Goodbye');
SELECT if ( 15 < 9, 'Hello','Goodbye');
SELECT if ( 1 >= 9, 'Hello','Goodbye');
SELECT if ( 1 <= 9, 'Hello','Goodbye');

CREATE TABLE parts ( 
	id PRIMARY KEY AUTO_INCREMENT, 
	parts_id VARCHAR(20) DEFAULT NULL, 
	catalog_id VARCHAR(20) NOT NULL );

INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ35', 'AB123');
INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ45', 'AB128');
INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ75', 'AB121');
INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ85', 'AB122');
INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ33', 'AB124');
INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ11', 'AB125');
INSERT INTO parts (parts_id, catalog_id) VALUES (null, 'AB126');
INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ40', 'AB129');
INSERT INTO parts (parts_id, catalog_id) VALUES ('XYZ20', 'AB127');
SELECT * FROM parts;

SELECT if(part_id IS NOT NULL, part_id, catalog_id) FROM parts;
SELECT IF(part_id IS NOT NULL, part_id, catalog_id) AS identifier FROM parts;
SELECT IF(part_id IS NOT NULL, part_id, catalog_id) AS identifier FROM parts WHERE IF(part_id IS NOT NULL, part_id, catalog_id) = 'AB126';
SELECT IF(part_id IS NOT NULL, part_id, catalog_id) AS identifier FROM parts WHERE IF(part_id IS NOT NULL, part_id, catalog_id) = 'XYZ35';

SELECT * FROM parts;
SELECT IFNULL(part_id, catalog_id) AS newidentifier FROM parts;




