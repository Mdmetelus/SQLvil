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