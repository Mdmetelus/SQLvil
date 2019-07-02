-- Basic Functions;

SELECT FirstName, UPPER(LastName) AS LastName FROM employees;

SELECT Lower(FirstName) AS FirstName, LastName FROM employees;

SELECT Salary, SQRT(Salary) AS Squared_Salary FROM employees;

SELECT AVG(Salary) FROM employees;

SELECT AVG(Salary) As avg_salary FROM employees;

SELECT AVG(cost) FROM items;

SELECT SUM(Salary) FROM employees;

-- Functions and Subqueries

SELECT AVG(Salary) FROM employees;

SELECT FirstName, Salary FROM employees WHERE Salary > 3100 ORDER BY Salary DESC;

SELECT LastName, FirstName, Salary FROM employees WHERE Salary > 1000 ORDER BY Salary, LastName, FirstName DESC;

SELECT * FROM items WHERE cost > 463 ORDER BY cost DESC;

SELECT FirstName, Salary FROM employees WHERE Salary > (SELECT AVG(Salary) FROM employees) ORDER BY Salary DESC;

SELECT * FROM items WHERE cost > (SELECT AVG(cost) FROM items) ORDER BY Salary ASC;

 -- Like Operator 

 SELECT colomn_one FROM table_one WHERE colomn_one LIKE '_a%';

 SELECT * FROM employees WHERE FirstName LIKE 'A%';

 SELECT * FROM employees WHERE LastName LIKE '%s';

 SELECT seller_id FROM Items WHERE name LIKE '%boxes';

 SELECT MIN(Salary) AS Salary FROM employees;

 SELECT name, MIN(cost)From items WHERE name LIKE '%boxes  of frogs' AND seller_id IN(68, 6, 18);

  --

  SELECT * FROM students WHERE university = 'MIT';

  SELECT name, university From students WHERE university IN ('Stanford', 'MIT') ORDER BY  university;

  SELECT name, age FROM students WHERE age > (SELECT AVG(age) FROM students);