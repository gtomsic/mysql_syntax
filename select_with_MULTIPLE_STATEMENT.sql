/* Add a column called 'new_rental_rate' base on the following criteria
1. Adds 0.01 to the current rental rate for PG rated films that have a rental duration greater than or equal 6
2. Divides the rental rate by 2 for NC-17 rated films or those films with rental duration of 3
3. Doubles the rental rate for films withr ating of G or PG-13, or rental duration of 4 or 5 days
4. Keeps the same rental rate for all other films*/
SELECT 	film_id,
		title,
        rating,
        rental_duration,
        rental_rate,
        FORMAT((CASE 
			WHEN rating = 'PG' AND rental_duration >= 6 THEN rental_rate + 0.01
            WHEN rating = 'NC-17' OR rental_duration = 3 THEN rental_rate / 2
            WHEN rating IN ('G', 'PG-13') OR rental_duration IN (4, 5) THEN rental_rate * 2
            ELSE rental_rate
        END), 2) AS `new_rental_rate`
FROM film;