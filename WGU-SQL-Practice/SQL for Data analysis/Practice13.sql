DROP TABLE IF EXISTS test;
CREATE TABLE test (
    a INTEGER,
    b VARCHAR(255),
);

INSERT INTO test ( b ) VALUE ( 'one');
DESCRIBE test;
SELECT * FROM test;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
    a INTEGER NOT NULL, -- if you put not null on an integer and don't add a value there will be a zero not a NULL in the feild.
    b VARCHAR(255),
);

INSERT INTO test ( b ) VALUE ( 'one');
DESCRIBE test;
SELECT * FROM test;

DROP TABLE IF EXISTS test;

CREATE TABLE test1 (
    a INTEGER NOT NULL DEFAULT 55,
    b INTEGER NOT NULL,
    c INTEGER,
    d VARCHAR(255),
    e VARCHAR(255) UNIQUE -- creates an index to enforse uniqueness
);
INSERT INTO test ( b ) VALUE ( 'one');
DESCRIBE test;
SELECT * FROM test;