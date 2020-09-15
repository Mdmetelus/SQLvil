USE test;
SELECT id , title FROM books WHERE id = 1;
SELECT @theId := id, title FROM books WHERE id = 1;

SELECT id, title INTO @theId, @theTitle FROM books WHERE id = 1;

SELECT @theId, @theTitle;

-- ------------------------------------------------------------

USE test;
SELECT id, title INTO @theId, @theTitle FROM books WHERE id = 1;

SELECT @theId, @theTitle;
DROP PROCEDURE showbooks;

DELIMITER //
CREATE PROCEDURE `showbooks`(IN theID INT, OUT outID outTitle VARCHAR(50))
BEGIN

SELECT id, title INTO outId, OutTitle FROM books WHERE id = theId;

END //

DELIMITER ;

-- CALL showbooks(1);
CALL showbooks(3, @id, @title);

SELECT @id, @title;

---------------------------------------------------------------

USE test;

SET COUNT(*) FROM books;

DROP PROCEDURE test1;

SET DELIMITER //

CREATE procedure test1(IN id INT)
BEGIN
SELECT id;

SELECT COUNT(*) INT id FROM books;

END //

SET DELIMITER ;

SET @value = 123;

CALL test1(@value);

SET @value

---------------------------------------------------------------

USE test;

SET COUNT(*) FROM books;

DROP PROCEDURE test1;

SET DELIMITER //

CREATE procedure test1(OUT id INT)
BEGIN
SELECT id;

SELECT COUNT(*) INT id FROM books;

END //

SET DELIMITER ;

SET @value = 123;

CALL test1(@value);

SET @value

---------------------------------------------------------------

USE test;

SET COUNT(*) FROM books;

DROP PROCEDURE test1;

SET DELIMITER //

CREATE procedure test1(INOUT id INT)
BEGIN
SELECT id;

SELECT COUNT(*) INT id FROM books;

END //

SET DELIMITER ;

SET @value = 123;

CALL test1(@value);

SET @value

-- -------------------------------------------------------------
USE test;
SHOW TABLES;

SELECT * FROM accounts;
DELIMITER //
CREATE PROCEDURE withdraw(IN flag bool)
BEGIN
	IF flag = TRUE THEN
		SELECT 'HELLO';
	END IF;

END//
DELIMITER ;

CALL withfraw(true);


-- -------------------------------------------------------------
DROP PROCEDURE withraw;
USE test;
SHOW TABLES;

SELECT * FROM accounts;
DELIMITER //
CREATE PROCEDURE withdraw(IN flag bool)
BEGIN
	IF flag = TRUE THEN
		SELECT 'HELLO';
	ELSE
		SELEcT 'Goodbye';
	END IF;

END//
DELIMITER ;

CALL withfraw(false);

DROP PROCEDURE withraw;

-- -------------------------------------------------------------
USE test;
SHOW TABLES;

SELECT * FROM accounts;
DELIMITER //
CREATE PROCEDURE withdraw(IN flag bool)
BEGIN
	IF flag = TRUE THEN
		SELECT 'HELLO';
	ELSE
		SELEcT 'Goodbye';
	END IF;

END//
DELIMITER ;

CALL withfraw(true);

DROP PROCEDURE withraw;

-- -------------------------------------------------------------
















