-- What is the highest Life Expectancy of any Country in the country dataset?
SELECT MAX(LifeExpectancy) `Highest LE` FROM country;

-- what is the lowest LIfe Expectancy of any Country in the country dataset?
SELECT 	MAX(LifeExpectancy) `Highest LE`,
		MIN(LifeExpectancy) `Lowest LE` 
FROM country;

-- What is the highest Life Expectancy within each Region in the dataset?
SELECT 	Region, 
		MAX(LifeExpectancy) `Highest LE`
FROM country
GROUP BY Region
ORDER BY `Highest LE` DESC;

-- What is the lowest LIfe Expectancy within each Continentn in the dataset?
SELECT 	Continent,
		MIN(LifeExpectancy) `Lowest LE`
FROM country
GROUP BY Continent
ORDER BY `Lowest LE` ASC;

-- BONUS: Using the above query, in a result returns NULL, replace with 30