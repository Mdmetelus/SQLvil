-- update statments

SELECT * FROM test WHERE A = 2;

UPDATE test SET c = 'Extra funny.' WHERE a = 2;
SELECT * FROM test;

UPDATE test SET c = 'Even funnier.' WHERE a = 2;
SELECT * FROM test;

UPDATE test SET c = NULL WHERE a = 2;
SELECT * FROM test;


-- Delete statments Practice:

DELETE FROM test WHERE a = 2;
SELECT * FROM test; -- row deleted;

SELECT * FROM test WHERE a = 1; -- selects only the one row
SELECT * FROM test;

DELETE FROM test WHERE a = 1;
SELECT * FROM test;

DELETE FROM test; -- all the rows will be deleted if you remove te WHERE clause
SELECT * FROM test;