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