-- LIKE '%'
SELECT * FROM country 
WHERE Name LIKE 'a%';

SELECT * FROM country 
WHERE Name LIKE '%d';

SELECT * FROM country 
WHERE Name LIKE '%ric%';

-- LIKE '_'
SELECT * FROM country 
WHERE Name LIKE '____';

SELECT * FROM country 
WHERE Name LIKE '_ra_';

SELECT * FROM country 
WHERE Name LIKE '_ra%';

-- REGEXP -- This return countries starting from  a-c 
SELECT * FROM country 
WHERE Name REGEXP '^[A-C]';