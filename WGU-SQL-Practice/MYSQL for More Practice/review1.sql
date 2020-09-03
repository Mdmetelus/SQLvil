show databases;

create database tutorial1;

use tutorial1;

create table users(username text);

show tables;

desc users;

insert into users (username) values ('Bob');
insert into users (username) values ('Vickers');
insert into users(id, username) values (3, 'sam');

select * from users;

desc users;

drop table users;

show tables;
create table users(id int, username text);

desc users;

insert into users(id, username) values (1, 'sam');

insert into users (id, username) values ( 2, 'bob');
insert into users (id, isername) values (3, 'vicky');

select * from users;

desc users;

insert into users (id, username) values (4, null);
select * from users LIMIT 0, 100;

insert into users (id, username) values(null, null);
select * from users LIMIT 0, 100;

insert into ussers (id) vak=lues (4);
select *from users LIMIt 0, 50;

desc users;

drop table users;
show tables;

create table users(id int not null, username text not null); # stuff
/*
stuff
*/

-- stuff
# stuff

-- stuff

use tutorial1;
show engines
show table status;

create table testEngines(id int) engine-MYISAM;
create table testNewEngine(id int) engine-InnoDB;

show table status;
describe users;

set default_starage_engine=MYISAM;

set defaut_storage_engine=InnoDB;

use tutorial1;

-- display tables; --
 show tables;

select * from users;

delete * from users;

delete * from users where id = 0;

select @@session.SQL_SAFE_UPDATES
set sql_Safe_upate = 0;

select * from users

use tutorial1;

drop table users;

create table Users(id int not null primary key autoincrement, anme text, email text);

create table Users (id int primary key, name text, email text) engine=InnoDB;
desc users;

insert into users (id, name, email) values (0, 'Bob', 'bob@ dadastuff.com');
insert into users (id, name, email) values (1, 'Vibi', 'notinterested"@mymail.com');

select * from users;

select * from users where id = 1;

-- select * from users where name 

insert into users(id, name, email) values (2, 'tommy', 'tomof_tomandJerry@gmail.com');

insert into users (id, name, email) values ( 3, 'cxvyv', 'bobopsudubewaa@gmail.com');

Insert into users (id, name, email) values (4, 'truth', 'idontbuyit@haha.com');

show table;

drop table users;

create table users (id int primary key, name text, email text) engine=InnoDB;
desc users;

drop table users;

create table users (id int primary key auto_increment, name text, email text);
desc table;
show table;
select * from users where id < 20;

create table purchase ( id int autoincrement, name text, email text, orders int)engine=InnoDB;

insert into users (name) values ('bob');
select * from users;
insert into users (name) values ('tammy');

select * from users;

select * from users limit 0, 15;
insert into users (id, name) values (o, mickey);

CREATE TABLE animals (
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	name char(20) NOT NULL,
	PRIMARY KEY (id)
	);
	
INSERT INTO animals (name) VALUES ('dog'), ('cat'),('monkey'),('penguin'),('lax'),('whale'),('ostrich');

-- Select * from animals where 
-- 

insert into users (id, name) values (0, 'benny'); -- if you put zerofor id it will put that it the next availible with the next number.(not zero).;

-- Narrowing a select statment:
select * from users;

select * from users where id = 3;

select * from users where name = 'micky';

select * from users where name = 'bob' AND id = 0;

select id from users where name = 'micky';

select id, nmae from users where name = 'bob';

select * from users;

delete * from users where id = 3; 
delete from users where id = 3;

delete from users where id = 3 AND name = 'micky';

select * from users limit 0, 1000;
select id, name from users where name = bob;

delete from users where name = 'micky';

select * from users Limit 0, 50;
select * from users order by name asc;

select name, id FROM users LIMIT 10 order by id DESC;

select 

use tutorial1;
drop table users;
show tables;

create table users (id int primary key aUTO_INCREMENT, name char(60), age int)engine=InnoDB;

insert into users (name, age) values ('Bob', 46);

select * from users;

-- Comparison operators:
SELECT name, age FROM users WHERE age >= 22 AND age <= 66;
SELECT * FROM users WHERE age BETWEEN 19 AND 35;
SELECT * FROM users WHERE age = 25;
SELECT * FROM users WHERE age < 30;

SELECT count(*) FROM users;
SELECT * FROM users.tutorials;






-- ******************************************
-- online mysql database




-- ************************************************
-- 
CREATE TABLE newanimals (
	grp ENUM('fish', 'Mammal', 'bird') NOT null,
	id MEDIUMINT NOT NULL, AUTO_INCREMENT,
	NAME CHAR(45) NOT NULL,
	PRIMARY KEY (id,grp)
	) ENGINE=MyISAM;
	
SELECT * FROM animals ORDER BY name;

CREATE TABLE person (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name CHAR(60) NOT NULL,
	PRIMARY kEY (id)
	);
	
CREATE TABLE shirt (
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	style  ENUM('t-shirt', 'polo', 'dress') NOT NULL,
	color ENUM('red', 'blue', 'orange', 'white', 'black', 'green', 'gray', 'teal') NOT NULL,
	owner SMALLINT UNSIGNED NOT NULL REFERENCES person(id),
	PRIMARY KEY (id)	
	);
	




































































































