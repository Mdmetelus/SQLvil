CREATE TABLE test ( a INT, b TEXT, c TEST );
INSERT INTO test ( b, c ) VALUES ( 'This', 'That');
SELECT * FROM test;

--- null isn't a value it is a lack of a value.


SELECT * FROM test WHERE a = NULL;
-- THIS WILL GET NO RESULT BECAUSE ALL THE CREATE SPOTS IN THE TABLE CURRENTLY HAVE VALUES.

