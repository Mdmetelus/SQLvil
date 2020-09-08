-- Write your query here
UPDATE for_sale SET price = 40000 WHERE model = 'Camaro';
SELECT * from for_sale;

-- Write your query here
DESCRIBE for_sale;
SELECT * FROM for_sale;
UPDATE for_sale SET price = 40000 WHERE model = 'Camaro';
SELECT * FROM for_sale;

-- Write your query here
SELECT * FROM widgets;

INSERT INTO widgets (num_sold, customer, paid_amt) VALUES ( 3, 'Mary Wills', 33.33);
SELECT * FROM widgets;

-- Write your query here
SELECT * FROM widgets;
DESCRIBE widgets;
INSERT INTO widgets (num_sold, customer, paid_amt) VALUES (3, 'Mary Wills', 33.33);
SELECT * FROM widgets;

-- Write your query here
SELECT * FROM MenuItems; 
DESCRIBE MenuItems;
UPDATE MenuItems SET TakeOut ='Y' WHERE Cost > 9.95;
SELECT * FROM MenuItems; 

-- Write your query here
DELETE FROM MenuItems WHERE Popularity < 3 AND TakeOut = 'Y';

-- Write your query here
INSERT INTO Restaurants (Name, Description, RestaurantType) VALUES ('Sarah’s Salad Shack ', 'Fresh salads made to order.', 3 );

-- Write your query here
INSERT INTO Restaurants (Name, Description, RestaurantType) VALUES ('Sarah\'s Salad Shack', 'Fresh salads made to order' , 3);

-- Write your query here
DELETE FROM garage WHERE year < 1960;


SELECT * FROM Pizza;
DESCRIBE Pizza;
SELECT * FROM uc_pizza;
DESCRIBE uc_pizza;

INSERT INTO Pizza (SELECT PizzaName, PizzaDescription, PizzaPrice, PizzaPhotoID, PizzaID FROM uc_pizza WHERE PizzaID = 1);


INSERT INTO Pizza(PizzaID, PizzaName, PizzaDescription, PizzaPrice, PizzaPhotoID)
(SELECT * FROM uc_pizza WHERE PizzaID = 1);

-- Write your query here
UPDATE MenuItems SET DateAdded = '2019-08-10';

-- Write your query here
UPDATE Animals SET Notes = 'large animal', LastWeighDate = '2019-08-10' WHERE Weight > 100 AND Gender = 'M';

-- Write your query here
SELECT * FROM Albums;
INSERT INTO Albums (Artist, Name, Notes, Cost,Purchased) VALUES (3, 'Reality All Stars', NULL, 17.50, '2019-08-10');

-- Write your query here
SELECT building_name, monthly_rent FROM Buildings;

SELECT * FROM garage WHERE make = 'Ferrari';

-- Write your query here
SELECT  company, monthly_fee FROM Services;

-- Write your query here
SELECT Name, Weight, Gender FROM Animals;

-- Write your qury here
SELECT * FROM Artists WHERE Rating >= 2;

-- Write your qury here
SELECT * FROM Artists WHERE Rating = 2;

-- Write your query here
SELECT name FROM Animals WHERE Species = 2;

-- Write your query here
DROP TABLE daily_diet_plan;

-- Write your query here
ALTER TABLE exercise_routine ADD Day_of_the_week Char(1) ENUM('M', 'T', 'F');

-- Write your query here
ALTER TABLE exercise_routine ADD day_of_the_week Char;

-- Write your query here
ALTER TABLE exercise_routine DROP COLUMN exercise_name;
ALTER TABLE exercise_routine ADD exercise_name VARCHAR(45);

-- Write your query here
ALTER TABLE exercise_routine COMMENT 'Exercise routine for January 1 to January 20';
SELECT * FROM exercise_routine;

-- Write your query here
TRUNCATE TABLE exercise_routine;

-- Write your query here
INSERT INTO ColorLookup (color)(SELECT DISTINCT color FROM Things);
SELECT * FROM Things;
DESCRIBE Things;
DESCRIBE ColorLookup;
SELECT * FROM ColorLookup;

-- Write your query here
ALTER TABLE Things ADD color_int int;

-- Write your query here
ALTER TABLE Things DROP COLUMN color;

-- Write your query here
ALTER TABLE Pass_keys MODIFY COLUMN pass_key BLOB NOT NULL;

-- Write your query here
ALTER TABLE Pass_keys ADD created TIMESTAMP DEFAULT CURRENT_TIMESTAMP;


