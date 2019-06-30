SHOW DATABASES;

SHOW TABLES;

SHOW COLOMNS FROM customers;

SHOW COLOMNS FROM CUSTOMERS;

SELECT name FROM customers;

SELECT FirstName FROM customers;

SELECT City FROM customers;

SELECT FirstName, LastName, City FROM customers;

SELECT name, city FROM people;

SELECT * FROM customers;

SELECT * FROM students;

SELECT DISTINCT City FROM customers;

SELECT DISTINCT LastName FROM families;

SELECT DISTINCT state FROM customers;

SELECT ID, FirstName, LastName, City FROM  customers LIMIT 5;

SELECT ID, LastName FROM customers LIMIT 20;

SELECT name FROM students LIMIT 7;

SELECT ID, FirstName, LastName, City FROM customers LIMIT 3, 4;

SELECT ID, FirstName, LastName, City FROM customers LIMIT 10, 20;

SELECT ID, FirstName, LastName, City FROM cutomers LIMIT 7, 3;

SELECT id, name FROM customers LIMIT 4, 12;

SELECT City FROM customers;

SELECT customers.City FROM customers;

SELECT customers.address FROM customers;

SELECT * FROM customers ORDER BY FirstName;

SELECT name, city FROM people ORDER BY id;

SELECT * FROM customers ORDER BY LastName, Age;

SELECT name, state, address FROM customers ORDER BY name, state;

SHOW TABLES;

SELECT DISTINCT name FROM students ORDER BY name;