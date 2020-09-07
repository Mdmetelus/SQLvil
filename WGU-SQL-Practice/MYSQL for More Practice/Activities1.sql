CREATE DATABASE PizzaOrderingDB;

CREATE DATABASE CustomerDB;
DROP DATABASE PizzaOrderingDB;

-- Write your query here
CREATE TABLE customerpizzaorder (
  PizzaOrderID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CustomerID INT(11) NOT NULL,
  PizzaOrderTimestamp TIMESTAMP DEFAULT NOW() NOT NULL,
  SpecialNotes VARCHAR(500),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE customerpizzaorder (
PizzaOrderID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
CustomerID INT(11) NOT NULL,
PizzaOrderTimestamp TIMESTAMP DEFAULT NOW(),
SpecialNotes VARCHAR(500) ,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));

Describe Customer;
Describe Pizza;
Describe CustomerPizzaOrder;

-- Write your query here
CREATE TABLE diet_plan(
  id int(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  food_name VARCHAR(20) NOT NULL,
  calories INT(11),
  food_group INT(1)
);

-- Write your query here
CREATE TABLE diet_plan(
  id int(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  food_name VARCHAR(20),
  calories INT,
  food_group INT
);

-- Write your query here
CREATE TABLE Cipher_keys (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(32) NOT NULL,
  cipher_key TEXT
  
);

-- Write your query here
CREATE TABLE Cipher_keys (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(32) not null,
  cipher_key text
);

-- Write your query here
CREATE TABLE uc_donutcustomers (
  CustomerID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CustomerAdress TEXT,
  CustomerPhone VARCHAR(30) NOT NULL DEFAULT '555-555-5555'
);

-- Write your query here
CREATE TABLE uc_donutcustomers (
  CustomerID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  CustomerAddress TEXT NOT NULL,
  CustomerPhone VARCHAR(30) DEFAULT '555-555-5555'
);

-- Write your query here
DESCRIBE Customer;
DESCRIBE Donut;
DESCRIBE CustomerDonutOrder;

-- Write your query here
CREATE TABLE diamond_sales (
  buyer_name VARCHAR(100),
  sales_price DECIMAL(8,2),
  cut_quality INT(1),
  purchase_date DATE
);

-- Write your query here
CREATE TABLE diamond_sales (
  buyer_name VARCHAR(100),
  sales_price DECIMAL(8,2),
  cut_quality INT,
  purchase_date DATE
);

-- Write your query here
CREATE TABLE log_ins (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ip_address TEXT NOT NULL,
  log_time TIMESTAMP DEFAULT NOW()
);

-- Write your query here
CREATE TABLE log_ins (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ip_address TEXT NOT NULL,
  log_time TIMESTAMP
);

DROP DATABASECustomerDB;


-- Write your query here
UPDATE uc_pizzaorder SET OrderQty = 10 WHERE PizzaOrderID = 1;

-- Write your query here
UPDATE uc_pizzaorder SET OrderQty = 10 WHERE PizzaOrderID = 1;

-- Write your query here
DELETE FROM test1 WHERE id = 35 OR id = 23;

-- Write your query here
INSERT INTO garage (make, model, year) VALUES ('Chevrolet', 'Camaro', 1971);

-- Write your query here
DELETE FROM garage WHERE make LIKE 'FERRARI';

DELETE FROM garage WHERE make = 'Ferrari';

-- Write your code here
SELECT * FROM for_sale;

INSERT INTO for_sale (make, model,year) (SELECT make, model, year FROM garage WHERE make = 'Alfa Romeo');

SELECT * FROM for_sale;

-- Write your query here
SELECT * FROM for_sale;
UPDATE for_sale SET price = 50000 WHERE price IS NULL;
SELECT * FROM for_sale;

-- Write your query here
DESCRIBE for_sale;
SELECT * FROM for_sale;
UPDATE for_sale SET price = 50000;
SELECT * FROM for_sale;


