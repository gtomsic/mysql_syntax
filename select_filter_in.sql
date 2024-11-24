-- Obtain all information pertaining to City ID's 100, 200, 300, 400 & 500
SELECT * FROM city 
WHERE ID IN (100, 200, 300, 400, 500);

-- Obtain all information pertaining cities called London, Manches or New York
SELECT * FROM city 
WHERE Name IN ('London', 'Manchester', 'New York');