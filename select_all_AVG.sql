-- What is the average rental rate across all films in the film 
SELECT AVG(rental_rate) FROM film; -- 2.98
 
-- Is the average rental rate for PG Rated films higher or lower than the overall average?
SELECT AVG(rental_rate) 
FROM film
WHERE rating = 'PG'; # 3.05

-- What is the lowest average replacement cost for each rating?
SELECT rating,
		AVG(replacement_cost) `RC`
FROM film
GROUP BY rating
ORDER BY `RC` ASC;

-- What is the average length of film for each combination of rating and rental duration
SELECT 	rating,
		rental_duration,
        AVG(length) `AVG Length`
FROM film
GROUP BY rating, rental_duration
ORDER BY 3 DESC;

-- Prove that the average function disregards NULL values
SELECT * FROM world.country;

SELECT * FROM world.country
WHERE IndepYear IN (1918);

SELECT SUM(GNPOld / 5) FROM world.country;
SELECT SUM(GNPOld / 4) FROM world.country;
SELECT AVG(GNPOld) FROM world.country;
