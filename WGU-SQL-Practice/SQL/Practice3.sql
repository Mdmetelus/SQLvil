-- Basic Functions;

SELECT FirstName, UPPER(LastName) AS LastName FROM employees;

SELECT Lower(FirstName) AS FirstName, LastName FROM employees;

SELECT Salary, SQRT(Salary) AS Squared_Salary FROM employees;

SELECT AVG(Salary) FROM employees;

SELECT AVG(Salary) As avg_salary FROM employees;