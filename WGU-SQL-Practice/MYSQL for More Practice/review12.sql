-- Write your code here
DELIMITER //

CREATE PROCEDURE count_rating
(IN var INT)
BEGIN
DECLARE stotal INT;
SET stotal = 0;

SET stotal := (SELECT COUNT(Name.Albums) FROM Artists INNER JOIN Albums ON Artists.ID=Albums.Artist(ID) WHERE Artists.Rating=var GROUP BY Artists.Rating);

SELECT stotal;
END //

DELIMITER ;

----------------------------------------

DELIMITER //
CREATE PROCEDURE count_rating (IN var1 INT)
BEGIN
select count(*) 
from Artists a, Albums b 
where a.Rating = var1 and a.ID = b.Artist;
END//
