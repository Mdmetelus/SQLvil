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


