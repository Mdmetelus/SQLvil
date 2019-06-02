-- Make a new Database
CREATE DATABASE foo;
-- folder will be created

USE foo;
CREATE TABLE firstTable ( a INT, b TEXT );
INSERT INTO firstTable VALUES ( 1, 'foo');
SELECT * FROM firstTable;

DROP TABLE firtTable;
-- table deleted

DROP DATABASE foo;
-- Database foo deleted


