DROP TABLE IF EXISTS lend;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS books;

CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CLIENT ( name ) VALUES ( 'Freddy' );
INSERT INTO CLIENT ( name ) VALUES ( 'Karen' );
INSERT INTO CLIENT ( name ) VALUES ( 'Harry' );
SELECT * FROM client;

CREATE TABLE book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;