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