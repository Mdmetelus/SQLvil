CREATE TABLE customerpizzaorder (
    PizzaOrderID INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT(11) NOT NULL,
    PizzaOrderTimestamp TIMESTAMP DEFAULT NOW(),
    SpecialNotes VARCHAR(500) NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);