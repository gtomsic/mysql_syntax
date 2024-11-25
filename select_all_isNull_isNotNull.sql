-- Select all information from the country table within the world schema
SELECT * FROM country;

-- How many country have a null life expectancy?
SELECT * FROM country
WHERE LifeExpectancy IS NULL;

-- How many countries are regarded as independent?
SELECT * FROM country
WHERE IndepYear IS NOT NULL;

/* Obtain the Country Name and Head of state column only fro Andora, Antarctica & Autralia
Do any of these countries bring back NULL values?
Test your answer by filtering all information in the table by NULL Head of State
*/
SELECT Name, HeadOfState FROM country 
WHERE Name IN ('Andorra', 'Antarctica', 'Australia')
AND HeadOfState = '';