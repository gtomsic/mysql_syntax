-- Select all records from the county table, aple from Aruba
SELECT * FROM country
WHERE NOT Name = 'Aruba';

-- Obtain countries taht do not start with the letter 'A';
SELECT * FROM country
WHERE Name NOT LIKE 'a%';

-- Select all information pertaining to countries that have surface area less than 10 or more than 10 million
SELECT * FROM country
WHERE SurfaceArea NOT BETWEEN 10 AND 10000000;

-- Select all information for countries that reside outside of Europe & Africa
SELECT * FROM country
WHERE Continent NOT IN ('Europe', 'Africa');

-- Select all countries that have life expectancy populated
SELECT * FROM country
WHERE LifeExpectancy IS NOT NULL;