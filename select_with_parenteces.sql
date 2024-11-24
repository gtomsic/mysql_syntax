-- How many cities are called London or Manchester?
SELECT * FROM city
WHERE name = 'London' OR name = 'Manchester';

-- How many cities are called London or Manchester and have a population of less than 400,000
SELECT * FROM city
WHERE (name = 'London' OR name = 'Manchester')
AND (Population < 400000);