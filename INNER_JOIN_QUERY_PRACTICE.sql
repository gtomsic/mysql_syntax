-- Bring back all information from rental table that relate to Marry Smith
SELECT * FROM customer;
SELECT * FROM rental
WHERE customer_id = 1;


SELECT * 
FROM customer AS c
INNER JOIN
rental AS r
ON c.customer_id = r.customer_id
WHERE c.customer_id = 1;

-- Extend the above query to join the inventory table and bring all information from each table for Mary Smith
SELECT * 
FROM customer AS c
INNER JOIN
rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
WHERE c.customer_id = 1;

-- Obtain the uniqe film id's that Mary Smith has rented
SELECT DISTINCT(i.film_id) AS `Distinct Film ID'S`
FROM customer AS c
INNER JOIN
rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
WHERE c.customer_id = 1;

-- How  many rentals are within each rating for mary Smith?
SELECT 	f.rating,
		COUNT(f.rating) 
FROM customer AS c
INNER JOIN
rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film as f
ON i.film_id = f.film_id
WHERE c.customer_id = 1
GROUP BY f.rating;

-- Assuming Mary returned the film on time as per the rental duration, how much would she have spent on all the films she rented?
SELECT 	SUM(rental_rate) AS `Cost`
FROM customer AS c
INNER JOIN
rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film as f
ON i.film_id = f.film_id
WHERE c.customer_id = 1;