/* Add the following column titles to the result below, each containing NULL values:
Addition, Subtraction, Multiplication, Divisionb, Integer Division, Modulus, Table Name */
SELECT 	film_id,
		title,
        rental_duration,
        rental_rate,
        length,
        replacement_cost,
        rental_duration + 2 `Longer Rental Duration`, 					-- Add 2 days to each rental duration and cahnge the column name to 'Longer Rental Duration'
        replacement_cost - 2.99 AS `Replacement Cost Discount`,			-- Subtract 2.99 from each replacement cost and cahnge column name to 'Replacement Cost Discount'
        rental_rate * 2 AS `New Rental Rate`,							-- Double the rental rate change the column name to 'New Rental Rate'
        FORMAT(rental_rate / rental_duration, 2) AS `Cost Per Day`,		-- Divide rental_rate by rental_duration and change the column name to 'Cost per day'
        length DIV 30 AS `Full Sittings`,								-- Divide length by 30 and change column name to 'Full sittings'
        length % 30 AS `Final Sitting`,									-- Calculate length module 30 and change column name 'Final sitting'
        'FILM TABLE' AS `Table Name`
FROM film;

-- Change the NULL value of each column to the respective arithmetic operator in string form. Populate the table name column with 'FILM TABLE'
