SELECT * FROM payment;
SELECT 	payment_id,
		amount, 
        amount * -1 AS `negative amount`, -- change the amount value to negative
        ABS(amount * -1), -- change the negative value to positive
        CEIL(amount), -- ceil is roundup to whole number
        FLOOR(amount), -- remove the decimal point()
        ROUND(amount, 1), -- round to whole number and control the decimal
        TRUNCATE(amount, 1), -- Control the value after the decimal point 
        POW(payment_id, 3), -- Power of 3 payment_id  
        POWER(payment_id, 3), -- Same as POW result
        ROUND(SQRT(payment_id), 2), -- Square root of each value
        PI()
FROM payment;