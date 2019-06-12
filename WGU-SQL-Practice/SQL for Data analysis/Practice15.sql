DROP TABLE IF EXISTS lend;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS books;

CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO client ( name ) VALUES ( 'Freddy' );
INSERT INTO client ( name ) VALUES ( 'Karen' );
INSERT INTO client ( name ) VALUES ( 'Harry' );
SELECT * FROM client;

CREATE TABLE book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO book ( title ) VALUES ( 'The moon is a Harsh Mistress' );
INSERT INTO book ( title ) VALUES ( 'Rendezvous with Rama' );
INSERT INTO book ( title ) VALUES ( 'A Game of Thrones' );
SELECT * FROM book;

