 -- Updating and Deleting statments practice;

UPDATE table_name
SET column1=value1, column2= value2
Where condition IS NOT NULL;

UPDATE Employees
SET Salary = 5000 WHERE ID = 1;

UPDATE students SET universities = 'Stanford' WHERE name = 'John';

UPDATE Employees
SET Salary = 5000, FirstName = 'Robert' WHERE ID = 1;

UPDATE students SET name = 'Peter', age = 32 WHERE id = 147;

 -- Deleting...
 
DELETE FROM table_name WHERE condition IS NOT NULL;

DELETE FROM Employees WHERE ID = 1;

DELETE FROM people WHERE id > 5 AND id < 10;

 -- Creating a new table practice;

CREATE TABLE;

CREATE TABLE (
    ID serial,
    some_column varchar (50)
    
) 

CREATE TABLE newest_Table (
    id SERIAL,
    name VARCHAR(255),
    age INT(2),
    catchLine VARCHAR(255)

);

CREATE TABLE users 
(
    UserID int,
    FirstName varchar(100),
    LastName varchar(100),
    City varchar(100)
)
