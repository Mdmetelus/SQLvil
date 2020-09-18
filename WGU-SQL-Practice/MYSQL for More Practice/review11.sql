DROP PROCEDURE withraw;
USE test;
SHOW TABLES;

SELECT * FROM accounts;
DELIMITER //
CREATE PROCEDURE withdraw(IN flag bool)
BEGIN
	DECLARE test INT;
	SET test := 7;
	SELECT test;

	
END//
DELIMITER ;

CALL withfraw(TRUE);

DROP PROCEDURE withraw;
-- -----------------------------------------

DROP PROCEDURE withraw;
USE test;
SHOW TABLES;

SELECT * FROM accounts;
DELIMITER //
CREATE PROCEDURE withdraw(IN account_id INT, IN amount NUMERAL(9.2), OUT success BOOL)
BEGIN
	DECLARE current_balance NUMERIC(9, 2) DEFAULT 0.0;
	SELECT balance INTO current_balance FROM accounts WHERE id = account_id;
	
	SELECT current_balance;

	IF current_balance >= amount THEN
		SELECT 'OK';
	ELSE
		SELECT 'Not Ok';
	END IF;
	
	
END//
DELIMITER ;

CALL withfraw(1, 50.00, @success);
CALL withfraw(2, 50.00, @success);
CALL withfraw(1, 300.00, @success);
CALL withfraw(1, 301.00, @success);

DROP PROCEDURE withraw;

-- -----------------------------------------

DROP PROCEDURE withraw;
USE test;
SHOW TABLES;

SELECT * FROM accounts;
DELIMITER //
CREATE PROCEDURE withdraw(IN account_id INT, IN amount NUMERAL(9.2), OUT success BOOL)
BEGIN
	DECLARE current_balance NUMERIC(9, 2) DEFAULT 0.0;
	SELECT balance INTO current_balance FROM accounts WHERE id = account_id;
	
	SELECT current_balance;

	IF current_balance >= amount THEN
		UPDATE accounts SET balance = balance - amount WHERE account_id;
		SET success = TRUE;
	ELSE
		SET success = FALSE;
		SELECT 'Not Ok';
	END IF;
	
	
END//
DELIMITER ;

CALL withfraw(1, 50.00, @success);
SELECT @suscess;
CALL withfraw(2, 50.00, @success);
SELECT @suscess;
CALL withfraw(1, 300.00, @success);
SELECT @suscess;
CALL withfraw(1, 301.00, @success);
SELECT @suscess;

DROP PROCEDURE withraw;

--  ------------------------------------------------------------
-- TRIGGER PRACTICE;
-- _______________________--------------------------------------
USE test;

CREATE TABLE sales(
	id INT PRIMARY KEY,
	PRODUCT VARCHAR(50) NOT NULL,
	value NUMERIC(10.2));
	
CREATE TABLE sales_update(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	product_id INT NOT NULL,
	changed_at timestamp,
	before_value numeric(10,2) NOT NULL
	after_value numeric(10,2) NOT NULL);
	
DROP TABLE sales_update;
	
INSERT INTO sales (id, product, value) VALUES (4, 'Dog Lead', 5.40);
INSERT INTO sales (id, product, value) VALUES (2, 'Mellon', 1.20);
INSERT INTO sales (id, product, value) VALUES (3, 'Cake', 0.80);

SELECT * FROM sales;
UPDATE sales SET value = 1.23 WHERE id = 3;
UPDATE sales SET value = 3.20 WHERE id = 1;

DELIMITER //
-- trigger can happen eather before something accurs or after.
CREATE TRIGGER before_sales_update BEFORE UPDATE ON sales FOR EACH ROW

BEGIN

INSERT INTO sales_update(product_id, changed_at, before_value, after_value) VALUES (old.id, now(), old.value, new.value);

END //

DELIMITER ;

SELECT * FROM sales_update;



------------------------------------------------------
CREATE TRIGGER xx_laals 
BEFORE delete ON books
FOR EACH ROW

CREATE TRIGGER fsdjsl AFTER UPDATE ON users
FOR EACH ROW

CREATE TRIGGER gkasdk
AFTER UPDATE ON addresses
FOR EACH ROW

CREATE TRIGGER blah BEFORE DELETE ON users FOR EACH ROW;

CREATE TRIGGER named_by_me AFTER DELETE ON names FOR EACH ROW

CREATE TRIGGER gjk BEFORE UPDATE ON sales FOR EACH ROW

-------------------------------------------------------


CREATE FUNCTION newfunc() RETURNS numeric(10,2)

CREATE FUNCTION smalls() RETURNS bool()






















