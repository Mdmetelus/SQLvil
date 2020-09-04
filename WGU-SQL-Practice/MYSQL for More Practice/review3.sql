CREATE TABLE moments(id int primary key auto_increment, theYear year, theDate date, theTime time)engine=Innodb;
DESC moments;
SELECT year(now()), time(now()), date(now());

INSERT INTO moments(theYear, theTime, theDate) VALUES ('2015', '12:20:31', '2020-10-22');
SELECT * FROM moments;
INSERT INTO moments(theYear, theTime, theDate) VALUES (year(now()), time(now()), date(now()));
selecct * From Moments;

DROP TABLE products;
CREATE TABLE products (name VARCHAR(60), sold_at timestamp default now(), recieved datetime);
INSERT INTO products (nmae, sold_at, recieved) VALUES ('Automatic dog groomer','2020-05-15 15:05:23', '2020-04-07 08:01:15');
SELECT * FROM products 

SELECT year(sold_at), time(sold_at), date(recieved) FROM products;
INSERT INTO (name, recieced) VALUES ('Autimatic dog groomer 2.0', now());
SELECT * From Products;

CREATE TABLE foods(name VARCHAR(60), Temperature enum('cold', 'hot') default 'cold', flavor enum('sweet', 'savory') default 'sweet');
INSERT INTO foods(name, tempurature, flavor) VALUES ('Peanuts', 'cold', 'savory');
SELECT * FROM food;

INSERT INTO foods(name, temperature, flavor) VALUES('Walnuts');
INSERT INTO foods(name, temperature, flavor) VALUES('Cashews', 'sdffadsd', 'safdasd'); -- wiil cause an error;
SELECT * FROM foods;

SELECT * FROM foods WHERE (temperature = 'hot' OR temperature = 'cold') AND flavor = 'sweet';
SELECT * FROM foods;
SELECT * FROM foods WHERE temperature = 'hot' OR (temperature = 'cold' AND flavor = 'sweet');
SELECT * FROM foods WHERE (temperature = 'hot' OR temperature = 'cold') AND (flavor = 'sweet');
SELECT * FROM foods;


SELECT DISTINCT temperature, flavor FROM foods order by tempurature desc limit 50;
SELECT DISTINCT flavor FROM foods order by flavor asc;

SELECT COUNT(DISTINCT temperature) FROM foods;
SELECT temperature COUNT(DISTINCT temperature) FROM foods GROUP BY temperature;

SELECT COUNTRY AVG(wieght) FROM table_name GROUP BY country ORDER BY weight asc LIMIT 200;
SELECT country avg(weight FROM table_name GROUP BY country ORDER BY country asc;

SELECT country count(country) FROM table_name GROUP BY country Having count(country) > 3 ORDER BY count(country);

SELECT avg(height) country count(height) FROM table_nam Group BY country order by avg height;

SELECT country gender avg(weight) count(gender)
FROM table_name
GROUP BY country, distinct gender
HAVING (count(country) OR count(gender)) > 2
ORDER BY country;

SELECT avg(health) exercise
FROM table_name
group by exercise
order by health desc;


CREATE TABLE addresses(
	id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	street_address VARCHAR(70) NOT NULL,
	street_address2 VARCHAR(60),
	city VARCHAR(30) NOT NULL,
	state CHAR(2) NOT NULL,
	Zip_code CHAR(7)
);

----------------------------   
----------------------------
-- SUBQUERIES with 'in';

SELECT * FROM person WHERE id IN (2, 3, 5);
SELECT * FROM person WHERE id IN (1, 2, 3):

SELECT * FROM person WHERE id IN (SELECT * FROM preson WHERE id > 2);

SELECT count(*) FROM person WHERE id IN (SELECT * FROM preson WHERE id > 3);

-- INLINE VIEWS;  
--------------------

USE health;
SHOW tables;

SELECT * FROM survey;
SELECT count(*) FROM survey GROUP BY country;

SELECT Country count(*) FROM survey GROUP BY country; -- you can also use this as a table itself.

SELECT AVG(respondents) FROM (SELECT country, count(*) AS respondents FROM survey GROUP BY COUNTRY) AS countrytotals;

-- AS countrytotals; is nessessary for it to work properly. -- its a temporary table.

SELECT * FROM (select country, count(*) as respondents from survey GROUP BY country) as aveiwmade where countrylike 'A%';

