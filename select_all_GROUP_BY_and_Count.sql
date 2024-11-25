-- SELECT ALL DATA FROM THE COUNTRY TABLE
SELECT * FROM country;

-- COUNT THE RECORDS IN THE DATASET
SELECT COUNT(*) AS `Count` FROM country;
SELECT COUNT(Code) as `Count_Code` FROM country;

-- COUNT THE RECORDS IN THE DATASET THAT RESIDE IN THE CONTINENT EUROPE
SELECT Continent, COUNT(Continent) as TOTAL
FROM country
WHERE Continent = 'Europe';

-- PROVE THAT COUNT FUNCTION DISREGARDS NULL VALUES
SELECT * FROM country
WHERE LifeExpectancy IS NOT NULL;

SELECT COUNT(LifeExpectancy) `Count of LE` FROM country;

-- HOW MANY CONTINENTS ARE THERE?
SELECT COUNT(DISTINCT Continent) AS `Continent Count` FROM country;

-- HOW MANY COUNTRIES RESIDE ON EACH CONTINENT? ORDER COUNT FROM HIGHEST TO LOWEST
SELECT 	Continent, 
		COUNT(Continent) AS Total
FROM country
GROUP BY Continent
ORDER BY Total DESC;

-- USING THE PRVIOUS QUERY, ADD A SECOND COUNT ON THE LIFE EXPECTANCY TO SEE WHAT CONTINENTS ARE MISSING VALUES
SELECT 	Continent, 
		COUNT(Continent) AS Total,
        COUNT(LifeExpectancy) AS `LE Count`
FROM country
GROUP BY Continent
ORDER BY Total DESC;