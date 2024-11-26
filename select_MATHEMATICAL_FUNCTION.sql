SELECT * FROM payment;
SELECT 	payment_id,
		amount, 
        amount * -1 AS `negative amount`, -- change the amount value to negative
        ABS(amount * -1), -- change the negative value to positive
        CEIL(amount), -- Round up to the nearest whole integer
        FLOOR(amount), -- Round down to the nearest whole integer
        ROUND(amount, 1), -- Round to specified the number of decimal places
        TRUNCATE(amount, 1), -- Remove the values from the end of your value (no rounding)
        POW(payment_id, 3), -- Raise the value to Power of 3 payment_id  
        POWER(payment_id, 3), -- Same as POW result
        ROUND(SQRT(payment_id), 2), -- Square root of each value
        PI()
FROM payment;