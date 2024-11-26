SELECT 	customer_id,
		rental_id,
        inventory_id,
        rental_date
FROM rental
WHERE customer_id = 1
AND staff_id = 1;