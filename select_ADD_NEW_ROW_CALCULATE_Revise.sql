-- Revise the below query to show the average replacement cost by rating before and after discount
SELECT	rating,
		FORMAT(AVG(replacement_cost), 2),
        FORMAT(AVG(replacement_cost - 2.99), 2) AS `Replacement Cost Discount`
FROM film
GROUP BY rating;