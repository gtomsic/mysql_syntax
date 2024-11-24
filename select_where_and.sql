-- How many films have a rating of G?alter
SELECT * FROM film
WHERE rating = 'G';

-- How many films have a rating of G with trailers as ther only special features?
SELECT * FROM film
WHERE rating = 'G' 
AND special_features = 'trailers';

-- How many films have a rating of G?
SELECT * FROM film
WHERE rating = 'G' 
AND special_features = 'trailers'
AND rental_rate = 2.99;

-- How many of the films identified in the previous example have a rental_duration of greater then 3 days;
SELECT * FROM film
WHERE rating = 'G' 
AND special_features = 'trailers'
AND rental_rate = 2.99
AND rental_duration > 3;