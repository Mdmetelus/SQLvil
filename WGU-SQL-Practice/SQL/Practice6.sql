 -- ALTER, DROP,renaming of tables operations practice.

ALTER TABLE People ADD DateOFBirth date;

ALTER TABLE students ADD specialty varchar(50);

ALTER TABLE People DROP COLUMN DateOFBirth;

DROP TABLE People;

ALTER TABLE people CHANGE FirstName name varchar(100);

RENAME TABLE People TO Users;

RENAME TABLE people TO humans;

RENAME TABLE sales TO orders;

 -- Views Table opperations Practice

CREATE VIEW my_firstView AS
SELECT FirstName, LastName, City
FROM orders
WHERE conditon IS NOT NULL;

CREATE VIEW hodor;

CREATE VIEW list AS SELECT FirstName, Salary FROM Employeees;

SELECT * FROM list;

CREATE VIEW temp AS 
SELECT id, name, mark FROM students
ORDER BY mark DESC LIMIT 10;

CREATE OR REPLACE VIEW temp AS
SELECT id, name, mark AS grade FROM students
WHERE mark > 65
ORDER BY mark DESC;

CREATE OR REPLACE VIEW new_list AS
Select FirstName, LastName Salary FROM Employees;