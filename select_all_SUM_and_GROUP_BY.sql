-- What is the total GNP for the entire country dataset
SELECT SUM(GNP) AS `Total GNP` FROM country;

/*
What is the population of each Region? Show the continent each region resides in.
Order the result by population size (highest first)
*/
SELECT 	Continent, 
		Region,
		SUM(Population) AS `Population`
FROM country
GROUP BY Continent, Region
ORDER BY `Population` DESC;


-- Using the query above, filter the result to show the continents Erurop and Africa only
SELECT 	Continent, 
		Region,
		SUM(Population) AS `Population`
FROM country
WHERE Continent IN ('Africa', 'Europe')
GROUP BY Continent, Region
ORDER BY `Population` DESC;