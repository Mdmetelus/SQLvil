

-- COMBINING QUERIES
SELECT * FROM person;

SELECT * FROM person WHERE id < 2

SELECT * FROM person where id >= 2
UNION
SELECT * from person WHERE id < 2;

SELECT * FROM person where id >= 2
UNION ALL
SELECT * from person WHERE id < 2;

SELECT * FROM person WHERE id <6 UNION ALL
SELECT* FROM person WHERE id < 2

SELECT * FROM person p  LEFT JOIN address a ON a.id=p.address_id;
SELECT * FROM person p  RIGHT JOIN address a ON a.id=p.address_id;

SELECT * FROM person p  INNER JOIN address a ON a.id=p.address_id;

SELECT * FROM person p LEFT JOIN address a ON a.id=p.address_id; UNION 
SELECT * FROM person p  RIGHT JOIN address a ON a.id=p.address_id; -- FULL OUTER JOIN

SELECT * FROM person p LEFT JOIN address a ON a.id=p.address_id; UNION ALL 
SELECT * FROM person p  RIGHT JOIN address a ON a.id=p.address_id; -- FULL OUTER JOIN with duplicates; and runs a bit faster than just union.

SELECT * FROM person p LEFT JOIN address a ON a.id=p.address_id WHERE p.address_id is null UNION 
SELECT * FROM person p  RIGHT JOIN address a ON a.id=p.address_id; -- 

-- AlTER TABLES; 
-- ALTER Existing schemas;
---------------------
SHOW TABLES;
CREATE TABLE person (id INT PRIMARY KEY AUTO_INCREMENT);
DESC person;
ALTER TABLE person ADD COLUMN email varchar(50) NOT NULL;

DESC person;

ALTER TABLE person ADD COLUMN name VARCHAR(50) NOT NULL AFTER id;

ALTER TABLE person ADD COLUMN dates TIMESTAMP NOT NULL AUTO_INCREMENT DEFAULT now() FIRST;

ALTER TABLE person ADD COLUMN team_id VARCHAR(25) NOT NULL DEFAULT 'Non-Yet';

ALTER TABLE person ADD constraint fk_teams FOREIGN KEY (team_id) REFERENCES team(id);
ALTER TABLE person MODIFY column name firstname VARCHAR(20) NOT NULL AFTER id;

ALTER TABlE person ADD COLUMN lastName VARCHAR(30) NOT NULL AFTER firstname;

ALTER TABLE person DROP COLUMN dates;

ALTER TABLE person DROP column temp;

SHOW TABLES:

SELECT * FROM libraries;
SELECT * FROM books;
INSERT INTO book (name, library) VALUES ('The 39 Steps', 1);

SELECT * FROM books;

ALTER TABLE book ADD CONSTRAINT fk_library FORIEGN KEY (library) references library(id);

SELECT * FROM book;

ALTER TABLE book DROP FOREIGN KEY fk_library;

ALTER TABLE book ADD CONSTRAINT fk_library FOREIGN KEY (library) REFERENCES library(id);
SHOW database;


