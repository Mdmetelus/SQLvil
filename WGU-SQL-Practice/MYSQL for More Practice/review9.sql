-- CASTING in MYSQL--
----------------------

SELECT '1974-05-15';
SELECT CAST('1974-05-15' AS CHAR);
SELECT CAST('1974-05-15' AS DATE);
SHOW tables;
SELECT COUNT(*) FROM books;

SELECT 'Number of Books: ' COUNT(*) FROM books;
SELECT CONCAT('Number of Books: ' CAST(COUNT(*) AS CHAR)) FROM books;

SELECT CONCAT('TOTAL: ', CAST(5 AS CHAR), ' ','Records');
SET @NUM = 0
SET @NUM = 4
SET @NUM = 1
SELECT ;

SELECT CONCAT('TOTAL : ', CAST(@NUM AS CHAR), IF( @num = 1,' Record',' Records'));

use test;
SHOW TABLES;
SELECT Count(*) FROM books;

SELECT DATE_FORMAT(the_date FROM dates; 

-- STORED PROCEDURES --
---------------------------
---------------------------

DELIMMITER //

CREATE PROCEDURE new_date(IN the_date DATE NOT NULL)

BEGIN
	SELECT * FROM dates WHERE id = max(id);
END //

DELIMITER ;
-- ---------------------------------------------------
SELECT * FROM books;
SELECT * FROM dates;

DELIMITER $$


-- -------------------------------------------------
USE test;

DELIMITER //
CREAT PROCEDURE HelloWorld()
BEGIN
SELECT 'Hello World';
END//
DELIMITER ;

DROP PROCEDURE HelloWorld;

CALL HelloWorld();

-- -------------------------------------------------
SHOW DATABASES;

SELECT * FROM mysql.proc;
SELECT body FROM mysql.proc;
SELECT CAST(body AS CHAR) FROM mysql.proc;

--------------------------------------------------

DELIMITERS //

CREATE PROCEDURE newnew()
BEGIN
SELECT * FROM books;
END //

DELIMITER ;

CALL newnew();

-- ------------------------------------------

USE online_shop;

SHOW TABLES;
SELECT * FROM products;

DELIMITER //
CREATE PROCEDURE `showcustomers`()
sql security invoker
BEGIN
SELECT * FROM customers;
END //

DELIMITER ;

CALL show customers();

-- -------------------------------------
-- PASSING PARAMITERS ------------------
------------------------------------
USE test;
SHOW TABLES;
SELECT * FROM books;

DELIMITER //
CREATE PROCEDURE `showbooks`(IN max_id INT)
BEGIN
SELECT 'Hello World';
SELECT * FROM books WHERE id < max_id;

END //

DELIMITER ;

CALL showbooks(6);
CALL showbooks(10);
CALL showbooks(4);
CALL showbooks(2);

DROP PROCEDURE showbooks;
-----------------------------------------------

USE test;
SHOW TABLES;
SELECT * FROM books;

DELIMITER //
CREATE PROCEDURE `showbboks`(IN maxid INT, IN theTitle VARCHAR(50))
BEGIN
SELECT * FROM books WHERE id < maxid AND title = theTitle;

END //

DELIMITER ;

call showbooks(4, 'Java for Absolute Beginners');

CALL showbooks(6, 'Training Dogs for Beginners');
CALL showbooks(3, 'Training Dogs for Beginners');

CALL showbooks(10, 'Training Dogs for Beginners');

-- -------------------------------------------------------

USE tests;







