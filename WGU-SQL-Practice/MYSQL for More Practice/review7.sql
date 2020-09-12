-- MYSQL
-- LOCKS and TRASACTIONS Practice;
---------------------------------

SHOW TABLES;
LOCK TABLES categories; -- will only be able to use the categories tables;

LOCK TABLE categories WRITE;

SHOW TABLES;
SELECT * FROM sales;
DESC sales;
SELECT * FROM categories;
INSERT INTO categories (name) VALUES( 'Baked Goods');

LOCK TABLE categories READ;
SHOW TABLES
UNLOCK TABLES; -- unlocks any tsables that are curently locked;
SHOW TABLES;

LOCK TABLE categories WRITE, customers WRITE;

SELECT * FROM sales;
SELECT * FROM categories;
SELECT * FROM customers;
UNLOCK TABLES;

-- VARIABLES in MYSQL;
----------------------

SELECT 3;
SELECT 3 + 100;
SELECT now();

SET @user = 'John'; -- variable

SELECT @user; -- returns John;

SET @value = 99;

SELECT @value;

SET @some_value = 88;
SELECT @some_value;

SET @min_value =6.99;
SELECT * FROM sales where transacton_value > 6.99;
SELECT * FROM sales where transacton_value > @min_value; -- both are the same;

SET @next_value = 8.99;
SELECT * FROM sales where transacton_value > @next_value;

SELECT *FROM sales;
SELECT SUM(transation_value) FROM sales;

SELECT @total := SUM(transation_value) FROM sales;
SELECT @total;
SELECT @total := SUM(transation_value) min(trasaction_value) FROM sales;

SELECT @total := SUM(transation_value) @min_value := min(trasaction_value) FROM sales;
SELECT @min_value;

SELECT * FROM sales 
SELECT * FROM sales_history;

SELECT SUM(transaction_value) FROM sales 

SELECT @new_total := Sum(trasaction_value) @new_timestamps := now() FROM sales;
INSERT INTO sales_history (recorded, total) VALUES (@new_timestamps, @new_total);

INSERT INTO sales_history (recorded, total) VALUES ( now(), @new_Totals);


INSERT INTO sales_history (recorded, total) VALUES ( now(), (SELECT SUM(transaction_value) FROM sales));

EXPLAIN INSERT INTO sales_history (recorded, total) VALUES ( now(), (SELECT SUM(transaction_value) FROM sales));

-- TRANSACTIONS 
-- ACID;
-- ATOMICITY, CONSISTENCY, ISOLATION, DURIBILITY;
-------------------------------------------------
-- InnoDB -- ACID Compliant;
-- MyISAM -- Not ACID Complient;


SET autocommit=0;

commit;
INSERT INTO books (name) VALUES ('Not my Mountain'), ('The fake jouney');
SELECT * FROM books;

commit;
SELECT * FROM books;
INSERT INTO books (name) VALUES ('The mole hill'), ('The other side of the code');
SELECT * FROM books;
commit;
rollback;
INSERT INTO books (name) VALUES ('The universe around us');

SELECT * FROM books;

DELETE FROM books WHERE id = 3;
SELECT * FROM books;

INSERT INTO books (name) VALUES ('The Mountain');
UPDATE books SET name = 'The Mountain Version 2' WHERE name like 'The Mountain';
UPDATE books SET name = 'The Mountain Version III' where name = id = 4;
SELECT * FROM books;
commit;
SELECT * FROM books;
rollback;
SELECT * FROM books;












