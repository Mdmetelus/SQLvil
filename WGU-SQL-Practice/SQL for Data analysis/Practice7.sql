SELECT COUNT(winner) FROM nobel;

SELECT DISTINCT subject
 FROM nobel;

 -- SELECT subject FROM nobel Where subject = ;
 -- SELECT COUNT FROM nobel

 SELECT subject, winner, yr FROM nobel WHERE subject = 'Physics'; 

 SELECT COUNT(winner) FROM nobel
 WHERE subject = 'Physics'; 

 Select subject, COUNT(winner) From nobel
GROUP BY subject;