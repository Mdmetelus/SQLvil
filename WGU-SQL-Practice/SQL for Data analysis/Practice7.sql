-- Show the total number of prizes awarded.

SELECT COUNT(winner) FROM nobel;

-- List each subject - just once
SELECT DISTINCT subject
 FROM nobel;

 -- SELECT subject FROM nobel Where subject = ;
 -- SELECT COUNT FROM nobel


 SELECT subject, winner, yr FROM nobel WHERE subject = 'Physics'; 

-- Show the total number of prizes awarded for Physics.
 SELECT COUNT(winner) FROM nobel
 WHERE subject = 'Physics'; 

 Select subject, COUNT(winner) From nobel
GROUP BY subject;

-- For each subject show the subject and the number of prizes.
Select subject, COUNT(winner) From nobel
GROUP BY subject 
ORDER BY subject DESC;

-- ORDER BY subject DESC
-- WHERE winner = 1;

-- For each subject show the number of prizes awarded in the year 2000.
SELECT DISTINCT subject, COUNT(yr) FROM nobel 
WHERE yr = '2000'
GROUP BY subject;

-- Show the number of different winners for each subject.
SELECT DISTINCT subject, COUNT(DISTINCT winner) FROM nobel
GROUP BY subject;

-- For each subject show how many years have had prizes awarded.
SELECT DISTINCT subject, COUNT(DISTINCT yr) FROM nobel
GROUP BY subject;

-- Show the years in which three prizes were given for Physics.
SELECT DISTINCT yr FROM nobel
WHERE subject = 'Physics'
GROUP BY yr
HAVING COUNT(yr) = 3;


-- Show winners who have won more than once.
SELECT winner FROM nobel
GROUP BY winner
HAVING COUNT(winner) > 1;

-- Show winners who have won more than one subject.
SELECT winner FROM nobel
GROUP BY winner
HAVING COUNT(DISTINCT subject) > 1;

-- Show the year and subject where 3 prizes were given. Show only years 2000 onwards.
SELECT yr, subject FROM nobel
GROUP BY yr, subject
HAVING COUNT(DISTINCT winner) = 3
AND yr >= 2000;
-- SELECT yr, subject FROM nobel
-- WHERE yr >= 2000
-- GROUP BY yr, subject
-- HAVING COUNT(DISTINCT winner) = 2;
-- -- AND yr >= 2000;