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
