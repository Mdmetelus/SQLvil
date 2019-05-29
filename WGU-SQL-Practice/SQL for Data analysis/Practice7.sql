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