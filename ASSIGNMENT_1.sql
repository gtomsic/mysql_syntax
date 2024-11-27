SELECT * FROM customer
-- What is customer id does Eva Ramos have?
WHERE first_name = 'Eva' AND last_name = 'Ramos';
-- Eva customer_id = 140
-- 2. What is the address of Eva Ramos
SELECT c.first_name,
		c.last_name,
        a.*
FROM customer AS c
INNER JOIN
address AS a
ON c.address_id = a.address_id
WHERE c.customer_id = 140;

-- 3. What City does eva live?
SELECT c.first_name,
		c.last_name,
        a.*,
        city.*
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id
INNER JOIN city AS city
ON a.city_id = city.city_id
WHERE c.customer_id = 140;

-- 4. What country does Eva live?
SELECT c.first_name,
		c.last_name,
        a.*,
        city.*,
        country.*
FROM customer AS c
INNER JOIN address AS a
ON c.address_id = a.address_id
INNER JOIN city
ON a.city_id = city.city_id
INNER JOIN country 
ON city.country_id = country.country_id
WHERE c.customer_id = 140;

-- 5. How many rentals has Eva Romas made?
SELECT 	c.first_name,
		c.last_name,
        r.customer_id,
        COUNT(r.customer_id) AS Total
FROM customer AS c
INNER JOIN rental AS r
ON c.customer_id = r.customer_id
WHERE c.customer_id = 140
GROUP BY r.customer_id;

-- 6. What film title has Eva Ramos made?
SELECT 	c.first_name,
		c.last_name,
        f.*
FROM customer AS c
INNER JOIN rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
WHERE c.customer_id = 140;

-- 7. How many rentals has Eva Ramos made within each film ratin?
SELECT 	c.first_name,
		c.last_name,
        f.rating,
        COUNT(f.rating) AS `Film Rating`
FROM customer AS c
INNER JOIN rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
WHERE c.customer_id = 140
GROUP BY f.rating;

-- 8. Assuming Eva Ramos returned her films on time as per rental duration, how much would she have spent on all the films she rented?
SELECT 	c.first_name,
		c.last_name,
       SUM(f.rental_duration) AS `Total Rental Duration`
FROM customer AS c
INNER JOIN rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
WHERE c.customer_id = 140;

-- 9. How much has Eva Ramos spen on her rentals in total
SELECT 	c.first_name,
		c.last_name,
       SUM(f.rental_rate) AS `Total Rent`
FROM customer AS c
INNER JOIN rental AS r
ON c.customer_id = r.customer_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
WHERE c.customer_id = 140;

-- 10 Who has spent the 3rd highest amount with the Sakila Company?
