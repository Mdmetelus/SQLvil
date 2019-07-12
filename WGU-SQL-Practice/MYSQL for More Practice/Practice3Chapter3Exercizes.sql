SELECT P_CODE, P_DESCRIPT, P_QOH, P_MIN, P_PRICE 
FROM PRODUCT
WHERE P_CODE <'1558-QW1';

CREATE [UNIQUE] INDEX indexname ON tablename( column1 [, column2]);

SELECT <column(s)>
FROM <Table name>
WHERE <Conditions>; 

SELECT P_DESCRIPT, P_QOH, P_PRICE, P_QOH*P_PRICE AS TOTVALUE 
FROM PRODUCT;

DELETE FROM PRODUCT
WHERE P_CODE = 'BRT-345';

SELECT DISTINCT V_CODE 
FROM PRODUCT; 

SELECT P_CODE, P_DESCRIPT, P_INDATE, P_PRICE FROM PRODUCT
ORDER BY P_PRICE; 

START TRANSACTION;
INSERT INTO widgets VALUES (5, "Bob's Construction", 56.12);
SAVEPOINT marys_orders;
INSERT INTO widgets VALUES (3, "Mary Wills", 33.33);
ROLLBACK TO marys_orders;
COMMIT

SELECT P_DESCRIPT, P_QOH, P_MIN, P_PRICE, P_INDATE 
FROM PRODUCT
WHERE P_INDATE <= '20-JAN-2010';

SELECT P_DESCRIPT, P_QOH, P_MIN, P_PRICE, P_INDATE 
FROM PRODUCT
WHERE P_INDATE >= '20-JAN-2010'; 

SELECT PRODUCT.P_DESCRIPT, PRODUCT.P_PRICE, VENDOR.V_NAME, VENDOR.V_CONTACT,
VENDOR.V_AREACODE, VENDOR.V_PHONE FROM PRODUCT, VENDOR
WHERE PRODUCT.V_CODE = VENDOR.V_CODE ORDER BY PRODUCT.P_PRICE; 

SELECT P_DESCRIPT, P_PRICE, V_NAME, V_CONTACT, V_AREACODE, V_PHONE FROM PRODUCT, VENDOR
WHERE PRODUCT.V_CODE = VENDOR.V_CODE; 

SELECT P_DESCRIPT, P_QOH, P_PRICE, P_QOH*P_PRICE 
FROM PRODUCT;

UPDATE uc_pizzaorder
SET OrderQty = 10
WHERE PizzaOrderID = 1;

-- Write your query here
DELETE FROM test1 WHERE id = 35 OR id = 23;

-- Write your query here
INSERT INTO garage (make, model, year) VALUES ('Chevrolet', 'Camaro', 1971);

-- Write your query here
SELECT * FROM for_sale;

UPDATE for_sale SET price = 50000 WHERE price IS NULL;

SELECT * FROM for_sale;

UPDATE for_sale SET price = 50000;

-- Write your query here
DELETE FROM garage WHERE make = 'Ferrari';

-- Write your query here
UPDATE for_sale SET price = 40000 WHERE model = 'Camaro';
SELECT * from for_sale;

-- Write your query here
SELECT * FROM widgets;

INSERT INTO widgets (num_sold, customer, paid_amt) VALUES ( 3, 'Mary Wills', 33.33);
SELECT * FROM widgets;

SELECT building_name, monthly_rent FROM Buildings;


ALTER TABLE table1 DELETE column2;
SELECT * FROM 

-- Write your query here
ALTER TABLE Things DROP color;
SELECT * FROM Things;