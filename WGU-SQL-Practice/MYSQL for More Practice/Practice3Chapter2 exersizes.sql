The relational operators have the property of _______________
; that is, the use of relational algebra operators on existing relations (tables) produces new relations.
*Matching is not case sensitive.

-- Write your query here
CREATE TABLE customerpizzaorder (
  PizzaOrederID INT(11) AUTO_INCREMENT PRIMARY KEY,
  CustomerID INT(11),
  PizzaOrderTimestamp TIMESTAMP,
  SpecialNotes VARCHAR(500)
  );

CREATE TABLE customerpizzaorder (
PizzaOrderID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
CustomerID INT(11) NOT NULL,
PizzaOrderTimestamp TIMESTAMP DEFAULT NOW(),
SpecialNotes VARCHAR(500) NULL,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));


DESCRIBE DATABASES;
ucertifydb.Customer, usertifydb.Pizza, ucertifydb.CustomerPizzaOrder;

SHOW CREATE TABLE ucertifydb.Customer;

CREATE TABLE Customers (
CustomerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  LastName VARCHAR(100) NOT NULL
);

-- Write your query here
CREATE TABLE diet_plan (
  food_name VARCHAR(20),
  calories INT,
  food_group enum('dairy group', 'meat group', 'fruits and vegetables', 'bread group', 'misc')
);

CREATE TABLE diet_plan (food_name VARCHAR(20), calories INT, food_group INT);

-- Write your query here
SELECT building_name, monthly_rent FROM Buildings;

-- Write your query here
SELECT * FROM garage WHERE make LIKE 'FERRARI';

SELECT * FROM garage WHERE make = 'Ferrari';

-- Write your query here
SELECT company, monthly_fee FROM Services;

-- Write your query here
DROP TABLE daily_diet_plan;

-- Write your query here
ALTER TABLE exercise_routine
ADD COLUMN day_of_the_week CHAR(3);

ALTER TABLE exercise_routine ADD day_of_the_week char;

-- Write your query here
ALTER TABLE exercise_routine DROP exercise_name, ADD exercize_name VARCHAR(45);

-- Write your query here
ALTER TABLE exercise_routine DROP COLUMN exercise_name;
ALTER TABLE exercise_routine ADD COLUMN exercise_name VARCHAR(45);

ALTER TABLE exercise_routine DROP exercise_name;
ALTER TABLE exercise_routine ADD exercise_name VARCHAR(45);

ALTER TABLE exercise_routine COMMENT 'Exercise routine for January 1 to January 20';

-- Write your query here
TRUNCATE TABLE exercise_routine;

-- Write your query here
 -- INSERT INTO ColorLookup DISTINCT color FROM Things;
INSERT INTO ColorLookup (color) SELECT DISTINCT color FROM Things;


-- Write your query here
ALTER TABLE Things ADD COLUMN color_int INT;
SELECT * FROM Things;

-- Write your query here
CREATE TABLE Cipher_keys (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(32) NOT NULL,
  cipher_key TEXT
  
);

CREATE TABLE Cipher_keys (
    id int auto_increment primary key, 
    name varchar(32) not null, 
    cipher_key text
);


DELETE FROM new_table2 ;

SELECT P_DESCRIPT, P_INDATE, P_PRICE, V_CODE 
FROM PRODUCT
WHERE P_PRICE <= 10;

CREATE TABLE new_table2 ();

SELECT EMP_LNAME, EMP_FNAME, EMP_INITIAL, EMP_AREACODE, EMP_PHONE FROM EMPLOYEE
ORDER BY EMP_LNAME, EMP_FNAME, EMP_INITIAL; 

SELECT * FROM PRODUCT