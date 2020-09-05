CREATE DATABASE people;
USE people;
CREATE TABLE address ( id int primary key auto_increment NOT NULL, 
	street VARCHAR(50));
insert into address (street) values ('Apple Lane'), ('Broad Street'), ('Church Lane');
SELECT * FROM address

CREATE table person (id int primary key auto_increment, 
	name varchar(50), address_id int, 
	foreign key (address_id) references address(id));

DESC person
INSERT INTO person(name, address_id) VALUES ('Anna', 1),('Bob', 2), ('Clare', 3); -- values added.
INSERT INTO person(name, address_id) VALUES ('David',4); -- creats an error; id 4 does not exist in the addresses table;
INSERT INTO person(name, address_id) VAlUES ('Arnold', 1), ('David', 2);-- values added.

SELECT * FROM person
SELECT * FROM person, address;
SELECT * FROM person, address; -- cartesian product;
SELECT p.id, p.name, p.address_id, a.id, a.street FROM person p, address a;

SELECT p.id AS person_id, p.name, p.address_id AS person_address_id, a.id AS address_id, a.street FROM person p, address a;

SELECT p.id AS person_id, p.name, p.address_id AS person_address_id, a.id AS address_id, a.street FROM person p, address a WHEREE p.address_id=a.id;

-- inner join; its the default;
SELECT p.id AS person_id, p.name, p.address AS person_address_id, a.id AS address_id, a.street 
FROM person p JOIN address a ON a.id=p.address_id;

SELECT person.person_id, person.name, address.street FROM person JOIN address ON person.address_id=address.id;

SELECT users.name, users.position, companys.name, companys.department FROM users JOIN companys ON users.company_id=companys.code;

SELECT players.name, players.height, players.position, teams.name, teams.standings, teams.ratings FROM players JOIN teams ON players.team=teams.name;

SELECT users.name, users.position, companys.name, companys.department FROM users INNER JOIN companys ON users.company_id=companys.code;

-- Left and right outer JOIN;

describe person;

SELECT name from person;
SELECT street FROM address;
INSERT into ADDRESS (id, street) VALUES (99, 'Nowhere');
SELECT * FROM address;

SELECT * FROM address LIMIT 0, 100;

INSERT INTO person (name. address_id) VALUES ('No-one', NULL);
SELECT * FROM person;

SELECT name FROM person p JOIN address a ON p.address_id=a.id;
SELECT name, street FROM person p JOIN address a ON p.address_id=a.id;

SELECT name, street FROM person p INNER JOIN address a ON p.address_id=a.id;

SELECT name, street FROM person p LEFT JOIN address a ON p.address_id=a.id; -- all the left(people) likmiting the right(addresses) 
SELECT name, street FROM person p LEFT OUTER JOIN address a ON p.address_id=a.id;

SELECT name, street FROM person p RIGHT JOIN address a ON p.address_id=a.id;
SELECT name, street FROM person p RIGHT OUTER JOIN address a ON p.address_id=a.id;

use health;
SELECT * FROM survey;
SELECT * FROM drink;

SELECT * FROM survey;
SELECT survey.id, country, age, smoke.question FROM survey INNER JOIN smoke ON survey.smoke=smoke.id;
SELECT survey.id, country, age, smoke.question FROM survey JOIN smoke ON survey.smoke=smoke.id;

SELECT survey.id, country, age, smoke.question, exercise.question 
FROM survey INNER JOIN smoke ON survey.smoke=smoke.id INNER JOIN exercise ON exercize.id=survey.excercise;

SELECT survey.name, survey.gender, (survey.weight /survey.height) AS Pounds per inch, fat.question, sugar.question, health.question 
FROM survey INNER JOIN fat ON survey.fat=fat.id 
INNER JOIN sugar ON sugar.id=survey.sugar INNER JOIN health ON health.id= survey.heath;

SELECT survey.name, survey.gender, (survey.weight /survey.height) AS Pounds per inch, fat.question, sugar.question, health.question concentration.question 
FROM survey INNER JOIN fat ON survey.fat=fat.id 
INNER JOIN sugar ON sugar.id=survey.sugar INNER JOIN health ON health.id= survey.heath INNER JOIN concentration ON concentration.id= survey.concentration;

SHOW TABLES;
SELECT * FROM region;
SELECT * FROM address;
SELECT * FROM person;

SELECT person.id, person.name, address.street, region.name FROM person INNER JOIN address ON address.id=person.address_id INNER JOIN region ON region.id=address.region_id;


SELECT * FROM person p JOIN address a ON p.address_id=a.id JOIN region r ON r.id=a.region_id;  

SELECT address.street region.name FROM 
address INNER JOIN region on region.id= address.region_id;

CREATE TABLE person_product (
	id int primary key NOT NULL AUTO_INCREMENT,
	event timestamp default now() AUTO_INCREMENT NOT NULL,
	person_id int NOT NULL,
	product_id int NOT NULL,
	FOREIGN KEY (person_id) REFERENCES person(id),
	FOREIGN KEY (product_id) REFERENCES product(id)
	);

INSERT INTO person_product (person_id, product_id) VALUES (1,3),(1, 3), (5, 2), (1,2), (1,3), (3,1), (2,1), (3,2);
SELECT * FROM person_product;

SELECT * FROM person p INNER JOIN person_product pp ON pp.person_id=p.id;

SELECT p.name, pp.product_id pr.nameFROM person p INNER JOIN person_product pp ON pp.person_id=p.id INNER JOIN product pr ON pr.id=pp.product_id;

SHOW TABLES;
-- SELF JOIN:

use cinema;

CREATE TABLE seats (
	id int PRIMARY KEY AUTO_INCREMENT,
	free bool
	);

INSERT INTO seats (free) VALUES (true), (false), (true), (true), 
(false), (true), (false), (true), (true), (false), (true), (true), (true), (false), (true), (true);

SELECT * FROM seats;
SELECT * FROM seats s1 join seats s2 on s1.id=s2.id+1;

SELECT s1.id AS 'Seat One ID', s2.id AS 'Seat Two ID' FROM seats s1 JOIN seats s2 on s1.id=s2.id+1 
AND s1.free=true AND s2.free = true;

SELECT s1.id AS 'Seat One ID', from seats s1 join seats s2 on s1.id +1=s2.id
AND s1.free=true AND s2.freee=true;
SELECT * FROM seats;

SELECT s1.id AS 'Seat One ID', from seats s1 join seats s2 on s1.id +1=s2.id
WHERE s1.free=true AND s2.freee=true;

CREATE TABLE individual (
	id int(11) NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	organisn_id int(11) NOT NULL,
	PRIMANRY KEY (id),
	KEY organism_id (organism_id),
	FOREIGN KEY (organism_id) REFERENCES organism (id) ON DELETE CASCADE
	ON UPDATE CASCADE
	);

INSERT INTO individual VALUES (3,'Fido',1), (4, 'Freddy', 2);

CREATE TABLE kingdom (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);
	
INSERT INTO kingdom VALUES (1,'plant'),(2,'animal'),(3,'fungi');

CREATE TABLE organism (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	kingdom_id int(11) DEFAULT NULL KEY,
	FOREIGN KEY (kingdom_id) REFERENCES kindom(id) 
	ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO organism VALUES (1,'dog',2), (2,'mushroom',3);

SELECT * FROM individual i JOIN organism o ON O.id=i.organism_id JOIN kingdom k ON k.id=o.kingdom_id;

S






































