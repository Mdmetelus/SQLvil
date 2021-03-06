-- WHERE STATEMENTS PRACTICE;
SELECT column_one FROM table_One WHERE condition = 1;

SELECT * FROM customers WHERE ID = 7;

SELECT id, Name FROM students WHERE id = 23;

SELECT * FROM customers WHERE ID != 5;

SELECT * FROM customers WHERE ID IS NOT NULL;

SELECT id, name FROM students WHERE id >= 12;

SELECT column_one FROM table_One WHERE column_one BETWEEN value1 AND value2;

SELECT * FROM customers WHERE ID BETWEEN 3 AND 7;

SELECT id, name FROM students WHERE id BETWEEN 13 AND 45;

SELECT ID, FirstName, LastName, City FROM  customers WHERE City = 'New York';

SELECT * FROM people WHERE city = 'Boston';

-- FILTERING with AND, or;

SELECT ID, FirstName, LastName, Age FROM customers WHERE Age >= 30 AND Age <= 40;

SELECT * FROM customers WHERE state = 'CA' AND city = 'Hollywood';

SELECT * FROM customers WHERE state = 'NY' AND (city = 'Queens' OR city = 'Brooklyn');

SELECT * FROM customers WHERE City = 'New York' OR City = 'Chicago';

SELECT name, state, city FROM customers WHERE state = 'CA' OR city = 'Boston';

SELECT * FROM customers WHERE City = 'New York' AND (Age=30 OR Age=35);

SELECT * FROM customers WHERE (id = 1 OR id = 2) AND city = 'Boston';

-- in Operator, and in, not in statments

SELECT * FROM customers WHERE City = 'New York' OR City = 'Los Angeles' OR City = 'Chicago';

SELECT * FROM users WHERE state = 'NY' or state = 'CA';

SELECT * FROM customers WHERE City IN ('New York', 'Los Angeles', 'Chicago');

SELECT name, state FROM customers WHERE state IN ('CA','NC','NY');

SELECT * FROM customers WHERE City NOT IN ('New York', 'Los Angeles', 'Chicago');

SELECT name, state FROM customers WHERE state NOT IN ('CA', 'NY');

-- Custom Colomns

SELECT CONCAT(FirstName,',',City) FROM customers;

SELECT CONCAT(FirstName,',',City) AS new_column FROM customers;

SELECT CONCAT(Latitiude,',',Longitude) AS Lat_Long FROM location_table;

SELECT ID, FirstName, LastName Salary FROM employees;

SELECT ID, FirstName, LastName Salary+500 AS Salary FROM employees;

SELECT CONCAT (city,',',state) AS new_address FROM customers;

