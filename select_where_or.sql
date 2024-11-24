-- Using the world schema, determine how many cities reside in the distict Limburg
SELECT * FROM city
WHERE District = 'Limburg';

-- Another area of interest in addition to Limburg are cities that are called Birmingham - bring these back in the same result set
SELECT * FROM city
WHERE District = 'Limburg'
OR Name = 'Birmingham';

-- Following on from the previous example, City ID 500 should also feed the result set
SELECT * FROM city
WHERE District = 'Limburg'
OR Name = 'Birmingham'
OR id = 500;

-- In addition to the above, we now want bring back all cities that have a population of less than 600
SELECT * FROM city
WHERE District = 'Limburg'
OR Name = 'Birmingham'
OR id = 500
OR population < 600;