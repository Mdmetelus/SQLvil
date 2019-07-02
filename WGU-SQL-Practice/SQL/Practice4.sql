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

