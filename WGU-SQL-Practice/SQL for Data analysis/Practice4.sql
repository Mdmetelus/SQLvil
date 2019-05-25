DROP TABLE IF EXISTS lend;

DROP TABLE IF EXISTS client;

DROP TABLE IF EXISTS book;


CREATE TABLE test ( a VARCHAR(10), b VARCHAR(10), c VARCHAR(10) );

INSERT INTO test VALUES ( 'one', 'two', 'three');

INSERT INTO test VALUES ( 'two', 'three', 'four');

INSERT INTO test VALUES ( 'three', 'four', 'five');

SELECT * FROM test;

ALTER TABLE test ADD d INT;

ALTER TABLE test DROP d;