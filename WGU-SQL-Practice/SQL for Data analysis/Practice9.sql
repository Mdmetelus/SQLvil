CREATE TABLE test ( a INT, b TEXT, c TEXT );
INSERT INTO test VALUES( 1, 'This', 'Right Here!');
SELECT * FROM test;


INSERT INTO test ( b, c ) VALUES ( 'That', 'Over there!' )
SELECT * FROM test;
-- there will be a null in the  a column.