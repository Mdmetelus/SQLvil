SELECT COUNT(*) FROM Country;
-- COUNT, counts all the non null values in the country table;


SELECT COUNT (Population) FROM Country;
-- COUNT, counts all the non null values for population  in the Country table;

SELECT Continent, COUNT(*) FROM Country GROUP BY Continent;

SELECT Continent, COUNT(*) AS Count FROM Country GROUP BY Continent ORDER BY Count DESC;
-- list the continents and te country count for each continent from the most to the least number of countries.

SELECT COUNT(DISTINCT Continent) FROM Country;

