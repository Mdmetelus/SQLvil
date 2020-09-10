-- Write your query here
CREATE VIEW V_Customer AS
SELECT CustomerID, CONCAT(FirstName, ' ', LastName) AS CustomerName, Street, APT, City, State, Zip, HomePhone, MobilePhone, OtherPhone
FROM Customer;

-- Write your query here
CREATE VIEW BirthdaySquad AS SELECT first_name, last_name, birth_month, birth_day FROM Employees;

-- Write your query here
CREATE VIEW BurnRate AS
SELECT CONCAT(first_name, ' ', last_name) AS employee, (SALARY / 12) AS monthly_cost FROM Employees
UNION
SELECT building_name, monthly_rent FROM Buildings
UNION
SELECT company, MOnthly_fee FROM Services;

-- Write your query here
CREATE VIEW V_Commission AS SELECT id,
CONCAT(first_name, ' ', last_name) AS customer_name, address, (salary * 0.10) AS commission, CONCAT(birth_year, '-', birth_month, '-', birth_day) AS birthday FROM Employees;

-- Write your query here
CREATE VIEW LargeAnimals AS SELECT Name, Weight FROM Animals WHERE Weight > 100;

-- Write your query here
CREATE VIEW MyDates AS 
SELECT CONCAT(last_name, ', ', first_name) AS names,
CONCAT(birth_year, '-', birth_month, '-', birth_day) AS dates FROM Employees
UNION
SELECT Name, Purchased FROM Albums
UNION
SELECT Name, LastWeighDate FROM Animals WHERE Weight > 100 
ORDER BY names;

-- Write your query here
CREATE INDEX i_pizzaName ON Pizza(PizzaName);

-- Write your query here
CREATE INDEX I_EEName ON Employees(last_name, first_name);

-- Write your code here
DELIMITER //

CREATE PROCEDURE count_rating
(IN var INT)
BEGIN

select count(*) from Artists a, Albums b where a.Rating = var and a.ID = b.Artist;

END //

DELIMITER ;








