REATE TABLE my_library(
  book_id INT,
  author_name VARCHAR(20),
  book_title VARCHAR(40),
  price DECIMAL(4,2),
  PRIMARY KEY (book_id)
);

-- Write your query here
SELECT Gender, COUNT(Gender) AS Count FROM Animals GROUP BY Gender;

-- Write your query here-- Write your query here
SELECT Name, (LastWeighDate) AS YearlastWeighed FROM

-- Write your query here-- Write your query here
SELECT Name, YEAR(LastWeighDate) AS YearLastWeighed FROM Animals WHERE Name LIKE 'F%';
 Animals WHERE Name LIKE 'F%';

 --3

DELIMITER //
-- Write your query here
CREATE FUNCTION count_status()
  RETURNS INT(30) DETERMINISTIC
    RETURN COUNT(Animals.Name) WHERE ComnservationStatus
END//

CALL count_status(1);

 --4 : incomplete

-- Write your query here
CREATE TABLE Places_table(
  id INTEGER AUTO_INCREMENT,
  Country VARCHAR(32),
  PRIMARY KEY (id)
);
INSERT INTO Places_table (Country)
SELECT DISTINCT Country FROM ACQ;

DESCRIBE Places_table;

SELECT * FROM Places_table;
 --7

-- Write your query here
CREATE TABLE Acquisitions(
  id INTEGER AUTO_INCREMENT,
  Date_acquire DATE,
  Contry VARCHAR(32),
  Amountpaid DECIMAL(8,2),
  Comments TEXT,
  PRIMARY KEY (id)
);

DESCRIBE Acquisitions;

SELECT * FROM Acquisitions;

-- 8


SELECT name FROM Animals WHERE name LIKE 'Fr%' AND Weight > 30 AND Weight < 70;

 -- 12


-- Write your code here
INSERT INTO Species (Name, Description, ConservationStatus) VALUES ('Chimpanzee', 'A tree animal', 3);

SELECT * FROM Species;

 -- 16

go back to 17,19 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

-- Write your query here
SELECT Name, Notes From Animals WHERE Gender Like 'F';

-- 18

