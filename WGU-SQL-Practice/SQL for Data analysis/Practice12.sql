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


CREATE TABLE test (
    id INTEGER,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state CHAR (2),
    zip CHAR(10) -- no comma here ever!!!
);

DESCRIBE test;
-- this gives a definition of the test table and its rows as the output

SHOW TABLE STATUS; -- Shows all the tables in the database.

SHOW TABLE STATUS LIKE 'test'; -- Shows the specific mentioned table.

SHOW CREATE TABLE test;

DROP TABLE IF EXISTS test; -- remove the old table version if its in the database


CREATE TABLE test (
    id INTEGER,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state CHAR (2),
    zip CHAR(10) -- no comma here ever!!!
) ENGINE = Innodb DEFAULT CHARSET=utf8; -- know the default character set is utf8

SHOW CREATE TABLE test;

SHOW TABLE STATUS;

DROP TABLE IF EXISTS test; -- removed the table

