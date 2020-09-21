-- Write your query here
CREATE TABLE my_library(
  book_id INT NOT NULL PRIMARY KEY,
  author_name VARCHAR(20) NOT NULL,
  book_title VARCHAR(40) NOT NULL,
  price DECIMAL(4,2)
);

DESCRIBE my_library;

-- Write your query here
SELECT Gender, COUNT(Gender)AS Count FROM Animals GROUP BY Gender ORDER BY GENDER ASC;

-- Write your query here
SELECT Name, YEAR(LastWeighDate) AS YearLastWeighed FROM Animals WHERE Name LIKE 'F%';


DELIMITER //
-- Write your query here

BEGIN 
CREATE PROCEDURE count_status(IN var INT)
BEGIN
SELECT COUNT(conservationStatus) FROM Animals,Species GROUP BY ConservationStatus HAVING
conservationStatus = var AND Animals.Species= Species.ID

END //
DELIMITER ;

CALL count_status(1);

-- Write your query here
CREATE TABLE Places_table(
  id INT AUTO_INCREMENT PRIMARY KEY,
  Country VARCHAR(32)
);

INSERT INTO Places_table (Country) (SELECT DISTINCT(Country) FROM ACQ);
SELECT * FROM ACQ;

ALTER TABLE ACQ DROP COLUMN Country;
ALTER TABLE ACQ ADD COLUMN Place_id INT DEFAULT NULL AFTER Date_acquire;
SELECT * FROM ACQ;

-- Write your query here
CREATE TABLE Acquisitions(
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Date_acquire TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  Country VARCHAR(32),
  Amountpaid DECIMAL(10,2),
  Comments TEXT
);
DESCRIBE Acquisitions;

-- Write your query here
SELECT Name FROM Animals
WHERE Name LIKE 'FR%' AND ( Weight > 30 AND Weight < 70);

-- Write your code here
DESCRIBE Species;
SELECT * FROM Species;
INSERT INTO Species (Name, Description, ConservationStatus) VALUES ('Chimpanzee', 'A tree animal', 3);
SELECT * FROM Species;

-- Write your query here
SELECT Name, Notes FROM Animals WHERE Gender = 'F';


SELECT NAME , WEIGHT,  COUNT(TOTAL WIEGHT) FROM ANIMALS

















