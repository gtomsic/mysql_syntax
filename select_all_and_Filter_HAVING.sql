/* Grouping by region, create a table that shows:
1. The count of countries in each region (call the column Country Count)
2. The sum of all populations within each region (call the column Population)
3. The average life expectancy for each (call the column Average LE)
4. The highest life expectancy within each region (call the column Max LE)
5. The lowest life expectancy within each (call the column Min LE)
Sort the result set by Population size (highest to lowest
*/
SELECT 	Region,
		COUNT(Name) `Country Count`,
        Sum(Population) `Population`,
        AVG(LifeExpectancy) `Average LE`,
        MAX(LifeExpectancy) `Max LE`,
        MIN(LifeExpectancy) `Min LE`
FROM country
GROUP BY Region
ORDER BY Population DESC;

-- Using the above query, filter the table for populations that are less than 50 million
SELECT 	Region,
		COUNT(Name) `Country Count`,
        Sum(Population) `Population`,
        AVG(LifeExpectancy) `Average LE`,
        MAX(LifeExpectancy) `Max LE`,
        MIN(LifeExpectancy) `Min LE`
FROM country
GROUP BY Region
HAVING `Population` < 50000000
ORDER BY Population DESC;

-- Using the above query, add a second filter to show regions that also have an average life expectancy greater than 70
SELECT 	Region,
		COUNT(Name) `Country Count`,
        Sum(Population) `Population`,
        AVG(LifeExpectancy) `Average LE`,
        MAX(LifeExpectancy) `Max LE`,
        MIN(LifeExpectancy) `Min LE`
FROM country
GROUP BY Region
HAVING `Population` < 50000000 AND `Average LE` > 70
ORDER BY Population DESC;