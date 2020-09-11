
-- ADDING/ REMOVING INDEXES:
----------------------------
ALTER TABLE music add INDEX idx_band(band);
ALTER TABLE music DROP INDEX idx_band;

SELECT * FROM music WHERE band = 'vague laugh' LIMIT 1;

ALTER TABLE music ADD INDEX idx_band(band,song);
SELECT * FROM music WHERE band = 'vague laugh' LIMIT 1;
SELECT * FROM music WHERE song = 'gaseous round';

ALTER TABLE music DROP index idx_band;

SELECT * FROM music;
SELECT * FROM music LIMIT 1000;

SELECT song FROM music WHERE band = 'vague laugh' GROUP BY band LIMIT 30 ORDER BY song ASC;
SELECT * FROM music WHERE band = 'vague laugh';
SELECT count(*) FROM music WHERE band = 'vague laugh';

ALTER TABLE music ADD index idx_band(band); 
-- creates a sorted copy of the column that is indexed;

ALTER TABLE music DROP INDEX idx_band(band);

ALTER TABLE music ADD index idx_band(band); 
SELECT * FROM music WHERE band = 'vague laugh';

-- index MULTIPLE COLUMNS;
--------------------------

ALTER TABLE music ADD INDEX idx_band(band,song);
-- speeds up queries on a, aand b but not b or bc
-- band, band and song, but not just song.

SELECT * FROM music WHERE band = 'vague laugh';
SELECT * FROM music WHERE band = 'vague laugh'and song = 'Gaswous Round';

-- USERS AND PRIVILAGES 
CREATE USER 'johndoe'@'localhost' identified by 'password123'
grant all privilages on *.* to  'johndoe'@'localhost';
show database;
flush privilages;
show databases;

-- granting privilages;
SELECT * FROM mysql.user; -- will list users, all users in root;
DROP user 'john'@'localhost';
SELECT * FROM mysql.user;
CREATE user 'meme'@'localhost' IDENTIFIED BY 'password123';

SHOW database;
GRANT SELECT ON online_shop.* to john@localhost;

SHOW databases;
SHOW TABLES;
SELECT * FROM SALES;
DROP TABLE SALES;

--CReATEING VIEWS;
-------------------- simmilarto tables but don't store data themselves.

SELECT * FROM book;
CREATE VIEW bookview AS SELECT id, name FROM book;
SHOW TABLES;
DESC bookview;
INSERT INTO booview (id, name) VALUES (1, 'The Thirty-Nine Steps');
SELECT * FROM bookview;
SELECT* FROM book;
DROP VIEW bookview;
SELECT * FROM BOOK;
SELECT id, name FROM book;

CREATE VIEW bkview AS SELECT id, name FROM book;
SHOW FULL TABLES;
SELECT * FROM bookview;
INSERT INTO bkview (id, name) VALUES (2, 'War and Peace');
SELECT * FROM bkview;

SELECT * FROM books;
DROP VIEW bkview;
SHOW TABLE;

-- BASIC VIEW ALGORITHMS;
SELECT * FROM sales s JOIN customers c ON c.id=s.customers_id;

creat veiw  customer_sales1 as SELECT * FROM sales s Join customers c ON c.id=s.customer_id;

CREATE VIEW booksview AS SELECT id, name FROM book WHERE id < 10;





