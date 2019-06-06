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
    e VARCHAR(255) UNIQUE, -- creates an index to enforse uniqueness
    -- you cant duplicate this(unique) row.
    f VARCHAR(255) UNIQUE NOT NULL
);
INSERT INTO test ( b ) VALUE ( 'one');
DESCRIBE test;
SELECT * FROM test;

DROP TABLE IF EXISTS test1;

CREATE TABLE test(
    id INTEGER,
    a VARCHAR(255),
    b VARCHAR(255)
);

INSERT INTO test ( id, a, b ) VALUES ( 1, 'one', 'two' );
INSERT INTO test ( id, a, b ) VALUES ( 2 ,'two', 'three' );
INSERT INTO test ( id, a, b ) VALUES ( 3, 'three', 'four' );
SELECT * FROM test;
DESCRIBE test;
SHOW TABLE STATUS like 'test';
SHOW CREATE TABLE test;
SHOW INDEXES FROM test;