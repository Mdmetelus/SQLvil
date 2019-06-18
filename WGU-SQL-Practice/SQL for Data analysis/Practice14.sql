DROP TABLE IF EXISTS test;
CREATE TABLE newtable(
    id INTEGER AUTO_INCREMENT PRIMARY KEY, -- id SERIAL means the same but takes up more space.
    a VARCHAR(255),
    b VARCHAR(255)
);

INSERT INTO test ( a, b ) VALUES ( 'NEW VALUE', 'NEW VALUE 2' );

-- serial  short hand for :
-- big int, unsigned, not null, auto increment, unique;

DROP TABLE IF EXISTS newtable;

CREATE TABLE newtable(
    id INTEGER AUTO_INCREMENT PRIMARY KEY, -- id SERIAL means the same but takes up more space.
    a VARCHAR(255),
    b VARCHAR(255),
    timeOfEvent  TIMESTAMP DEFAULT NOW(),
    idNumber INT(11) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL
);

SHOW CREATE TABLE newtable;

SELECT * FROM newtable;

ALTER TABLE newtable DROP a;

SELECT * FROM newtable;