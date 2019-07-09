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

CREATE TABLE tests;

CREATE TABLE tests1(
    ID serial,
    some_column varchar(50),
    PRIMARY KEY(ID)
    
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
    City varchar(100),
    PRIMARY KEY(UserID)
)

CREATE TABLE test (
    id int,
    username varchar(30),
    password varchar(20),
    PRIMARY KEY(id)
);


 -- NOT NULL and AUTO_INCREMENT practice with creating Tables;

CREATE TABLE tests2(
    ID serial,
    some_column varchar(50),
    name varchar(100) NOT NULL,
    nickname varchar(50) UNIQUE,
    PRIMARY KEY(ID)
    
);

CREATE TABLE tests3(
    UserID int NOT NULL AUTO_INCREMENT,
    username varchar(50) NOT NULL,
    PRIMARY KEY(UserID)
    
);

CREATE TABLE tests4(
    id int NOT NULL AUTO_INCREMENT,
    username varchar(50) NOT NULL,
    PRIMARY KEY(UserID)
    
);

CREATE TABLE Users (
    id int NOT NULL AUTO_INCREMENT,
    username varchar(35) NOT NULL,
    password varchar(10) NOT NULL,
    PRIMARY KEY(id)

);

CREATE TABLE last_tests (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(30) NOT NULL,
    PRIMARY KEY(id)
)