SELECT rating from film
GROUP BY rating;

SELECT rating, rental_duration 
FROM film
GROUP BY rating, rental_duration;

SELECT SUM(replacement_cost)
FROM film;

SELECT rating, SUM(replacement_cost)
FROM film
GROUP BY rating;