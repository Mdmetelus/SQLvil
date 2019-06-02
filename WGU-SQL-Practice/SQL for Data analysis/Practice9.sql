CREATE TABLE test ( a INT, b TEXT, c TEXT );
INSERT INTO test VALUES( 1, 'This', 'Right Here!');
SELECT * FROM test;


INSERT INTO test ( b, c ) VALUES ( 'That', 'Over there!' )
SELECT * FROM test;
-- there will be a null in the  a column.

INSERT INTO test ( a, b, c ) SELECT id, name , description FROM item;
-- taking the three values fron the item table row and inserting them into the test table 
SELECT * FROM test;
