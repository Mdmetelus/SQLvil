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
Select FirstName, LastName, Salary FROM Employees;

DROP VIEW list;

 -- QUIZES

 SELECT students.names, universities.names 
 FROM students LEFT OUTER JOIN universities
 ON students.university_id = universities.id;

 INSERT INTO people VALUES ('John Smith', '1', 22);

 UPDATE people SET name = 'Jordan' WHERE id = 147;

 CREATE TABLE(
     id int, name varchar(30), PRIMARY KEY (id)
 );


ALTER TABLE people DROP COLUMN age;

CREATE OR REPLACE VIEW most_abs AS
SELECT id, name, absences FROM students
ORDER BY absences DESC LIMIT 10;

DROP TABLE students;

ALTER TABLE students DROP COLUMN temp;

 -- TEST CHALENGES 1.0

