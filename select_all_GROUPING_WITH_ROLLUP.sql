-- Select rating, rental_duration and replacement_cost from the film table
SELECT 	rating, 
		rental_duration, 
        replacement_cost 
FROM film;

-- What is the Total replacement_cost?
SELECT SUM(replacement_cost)
FROM film;

-- Sum the replacement_cost grouped by rating
SELECT 	rating,
		SUM(replacement_cost)
FROM film
GROUP BY rating;

-- Example 1 of how to create a table with a total column...
SELECT rating,
		SUM(replacement_cost)
FROM film
GROUP BY rating
UNION ALL
SELECT NULL,
		SUM(replacement_cost)
FROM film;

-- Example 2 using ROLLUP (extension of the group by clause)
SELECT 	rating,
		SUM(replacement_cost)
FROM film
GROUP BY rating WITH ROLLUP;

SELECT 	rating,
		rental_duration,
		SUM(replacement_cost)
FROM film
GROUP BY rating, rental_duration WITH ROLLUP;

-- Check whether NULL is actaully the subtotal / total rows 
SELECT 	rating,
		rental_duration,
        SUM(replacement_cost),
        GROUPING(rating),
        GROUPING(rental_duration)
FROM film
GROUP BY rating, rental_duration WITH ROLLUP;

-- Relabel The NULLS 
SELECT 	IF(GROUPING(rating), 'All Ratings', rating),
		IF(GROUPING(rental_duration), 'ALL RD Total', rental_duration),
        SUM(replacement_cost)
FROM film
GROUP BY rating, rental_duration WITH ROLLUP;