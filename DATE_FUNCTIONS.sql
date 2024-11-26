SELECT 	customer_id,
		rental_id,
		inventory_id,
        rental_date,
        DATE(rental_date),
        YEAR(rental_date),
        MONTH(rental_date),
        MONTHNAME(rental_date),
        DAYOFMONTH(rental_date),
        DAY(rental_date),
        WEEKDAY(rental_date),
        DAYNAME(rental_date),
        DAYOFWEEK(rental_date),
        DAYOFYEAR(rental_date),
        EXTRACT(DAY FROM rental_date) -- You can used DAY HOUR MONTH OR YEAR
FROM rental
WHERE customer_id = 1
AND staff_id = 1;