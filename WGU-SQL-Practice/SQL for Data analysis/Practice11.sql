CREATE TABLE test ( a INT, b TEXT, c TEST );
INSERT INTO test ( b, c ) VALUES ( 'This', 'That');
SELECT * FROM test;

--- null isn't a value it is a lack of a value.


SELECT * FROM test WHERE a = NULL;
-- THIS WILL GET NO RESULT BECAUSE ALL THE CREATE SPOTS IN THE TABLE CURRENTLY HAVE VALUES.
SELECT * FROM test WHERE a IS NULL;

SELECT * FROM test WHERE a IS NOT NULL; -- thi gives you avery row inthe table with a value.

DELETE FORM test; -- entire row deleted

INSERT INTO test ( a, b, c ) VALUES ( 0, NULL, '' );

SELECT * FROM test WHERE b = ''; -- EMPTY REPLY

SELECT * FROM test WHERE b IS NULL; -- non-empty reply (returns the row)

SELECT * FROM test WHERE c IS NULL; -- empty reply

SELECT * FROM test WHERE c IS NOT NULL; -- non-empty reply (returns the row)

DROP TABLE test;