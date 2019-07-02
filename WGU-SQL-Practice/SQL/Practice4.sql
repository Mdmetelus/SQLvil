 -- Join Table practice

SELECT id FROM students ORDER BY id DESC;

SELECT customers.ID, customers.Name, orders.Name, orders.Amount FROM customers.orders
WHERE customers.ID = orders.Customers_ID ORDER BY customers.ID;

SELECT customers.name, items.name 
FROM customers, items
WHERE items.seller_id = customers.id;

 -- Types of joins

SELECT ct.ID, ct.Name, ord.Name, ORD.Amount
FROM customers AS ct, orders AS ord
WHERE ct.ID = ord.Customers_ID ORDER BY ct.ID;

SELECT ct.name, it.name 
FROM customers AS ct ,items AS it
WHERE it.seller_id = ct.id;

SELECT colomn_one 
FROM table_one INNER JOIN table_two
ON  table_one.colomn_one = table_two.colomn_one;

SELECT students.name, universities.name 
FROM students, universities
WHERE stuents.university_id = universities.id;

SELECT table1.colomn1, table2. colomn11
FROM table1 LEFT OUTER JOIN table2
ON table1.colomn_name = table2.colomn_name;

SELECT customers.Name, items.Name
FROM customers LEFT OUTER JOIN items
ON customers.ID = items.seller_id;

SELECT customer.name, items.name 
FROM customers LEFT OUTER JOIN items 
ON customer.id = items.seller_id;

SELECT customers.name, items.name 
FROM customers LEFT OUTER JOIN items
ON customers.id = seller_id;

SELECT table1.colomn1, table2.colomn11
FROM table1 RIGHT OUTER JOIN table2
ON table1.colomn_name = table2.colomn_name;

SELECT customers.Name, items.Name 
FROM customers RIGHT OUTER JOIN items
ON customers.ID = items.seller_id;

SELECT students.name, universities.name 
FROM students RIGHT OUTER JOIN universities
on students.university_id = universities.id;

 -- UNIONS practice (union, and union all);

SELECT name, cost, bids FROM items WHERE bids > 123;

SELECT colomn1 FROM table1
UNION
SELECT colomn11 FROM table2;

SELECT ID, FirstName, LastName, City FROM Firsts
UNION
SELECT ID, FirstName, LastName, City FROM Seconds;

SELECT FirstName, LastName, Company FROM businessContacts
UNION
SELECT FirstName, LastName, Company FROM businessContacts2;

SELECT FirstName, LastName, Company FROM businessContacts
UNION
SELECT FirstName, LastName, NULL FROM otherContacts;

SELECT ID, FirstName, LastName, City FROM First1
UNION ALL
SELECT ID, FirstName, LastName, City FROM Second1;

 -- Insert Statment practice

INSERT INTO table_Name Values (value1, value2, value3);

INSERT INTO Employees VALUES (8, 'Anthony', 'Young', 35);

INSERT INTO students Values('John Sminth', 'MIT');

INSERT INTO table_name(Column1, colomn2, colomn3, colomnN) Values (value1, value2, value3, valueN);

Insert INTO Employees (ID, FirstName, LastName, Age) VALUES (8, 'Anthony', 'Young', 35);

INSERT INTO students (name, university) VALUES ('Peter Parker', 'Stamford');

INSERT INTO Employees (ID, FirstName, LastName) Values (9, 'Samuel','Clark');

