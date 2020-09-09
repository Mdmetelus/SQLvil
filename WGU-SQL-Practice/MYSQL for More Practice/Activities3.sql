-- Write your query here
ALTER TABLE Pass_keys ADD created TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Write your query here
ALTER TABLE Pass_keys MODIFY pass_key BLOB COMMENT 'id of employees';

-- Write your query here
DROP TABLE MEATS;

-- Write your query here
ALTER TABLE project ADD COLUMN P_budget DECIMAL(8,2);

-- Write your query here
ALTER TABLE UC_project DROP P_budget;
ALTER TABLE UC_project ADD COLUMN P_cost INT NOT NULL;

-- Write your query here
ALTER TABLE Rating COMMENT 'Ratings of all movies released in 2019';

-- Write your query here
TRUNCATE TABLE funds;

-- Write your query here
INSERT INTO test2 (name, id)(SELECT name, id FROM test1 WHERE id > 23);

INSERT INTO test2 (name,id) SELECT name,id FROM test1 WHERE name > "m";

-- Write your query here
ALTER TABLE CHEESES ADD COLUMN description text NOT NULL;

-- Write your query here
ALTER TABLE UC_CHEESES DROP COLUMN description;

ALTER TABLE UC_CHEESES DROP description;

-- Write your query here
ALTER TABLE Restaurants Modify Description VARCHAR(50) NOT NULL;

-- Write your query here
ALTER TABLE Places ADD date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Write your query here
ALTER TABLE MenuItems MODIFY COLUMN popularity INT(11) COMMENT 'Popularity based on 2019 sales';

-- Write your query here
SELECT Region, City FROM Places WHERE Country = 'Canada' ORDER BY region DESC;

-- Write your query here
SELECT Region, City FROM Places WHERE country = 'United States' ORDER BY region DESC, city ASC;

-- Write your query here
SELECT Country, COUNT(City) FROM Places GROUP BY Country;

-- Write your query here
SELECT Region, COUNT(City) FROM Places WHERE Country = 'United States' GROUP BY Region;

-- Write your query here
SELECT Region FROM Places GROUP BY Region HAVING COUNT(City) > 2;

-- Write your query here
SELECT DISTINCT(color) FROM Things;

-- Write your query here
SELECT Name, Weight FROM Animals WHERE Species = 2 ORDER BY weight DESC;

-- Write your query here
SELECT make, model FROM garage WHERE make = 'Jaguar' OR make = 'Chevrolet' ORDER BY make DESC, model asc;

-- Write your query here
SELECT make, COUNT(model) FROM garage GROUP BY make;

-- Write your query here
SELECT make, COUNT(model) FROM garage GROUP BY make HAVING year > 1950;

-- Write your query here
SELECT make, COUNT(model) FROM garage WHERE year >= 1951
GROUP BY make;

SELECT make, COUNT(model) FROM garage WHERE year > 1950
GROUP BY make;

-- Write your query here
SELECT make FROM garage GROUP BY make HAVING COUNT(model) > 3;

-- Write your query here
SELECT DISTINCT(make) FROM garage;

-- Write your query here
SELECT o.PizzaOrderID, c.LastName, p.PizzaName, o.OrderQty, p.PizzaPrice  
FROM uc_pizzaorder AS o 
INNER JOIN uc_pizza AS p ON p.PizzaID=o.PizzaID 
INNER JOIN uc_customer AS c ON c.CustomerID=o.CustomerID;

-- Write your query here
SELECT
o.DonutOrderID, c.LastName, d.DonutName,o.OrderQty, d.DonutPrice
FROM uc_customer AS c INNER JOIN uc_donutorder AS o ON c.CustomerID=o.CustomerID INNER JOIN uc_donut AS d ON d.DonutID=o.DonutID;

-- Write your query here
SELECT CONCAT(first_Name, ' ',last_Name), (salary / 12) AS monthly_cost FROM Employees;

-- Write your query here
SELECT CONCAT(birth_year, '-',birth_month, '-', birth_day) AS namedbirthday, (salary * 1.1) AS max_commission FROM Employees;

-- Write your query here
SELECT CONCAT(birth_year, '-',birth_month, '-', birth_day) AS birthday, (salary * 0.1) AS max_commission FROM Employees;












