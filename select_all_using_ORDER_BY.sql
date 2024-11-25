-- SELECT Name, IndepYear, Population, Life Expectancy fromt he country table within the world schema
SELECT 	Name, 
		IndepYear, 
		Population, 
        LifeExpectancy 
FROM country;

-- Order the results by Name from Z to A
SELECT 	Name, 
		IndepYear, 
		Population, 
        LifeExpectancy 
FROM country
ORDER BY Name DESC;

-- order the results by Population from highest to lowest
SELECT 	Name, 
		IndepYear, 
		Population, 
        LifeExpectancy 
FROM country
ORDER BY Population DESC;

-- Order the results by LifeExpectancy (using LE Alias) from hihest to lowes
SELECT 	Name, 
		IndepYear, 
		Population, 
        LifeExpectancy AS 'LE'
FROM country
ORDER BY LE DESC;

-- Order the results by IndepYear (most recent first) and then Population from lowest to highest
SELECT 	Name, 
		IndepYear, 
		Population, 
        LifeExpectancy 
FROM country
ORDER BY IndepYear DESC, Population ASC;

-- Recreate the query above by using column number references
SELECT 	Name, 
		IndepYear, 
		Population, 
        LifeExpectancy 
FROM country
ORDER BY 2 DESC, 3 ASC;