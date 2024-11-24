-- Change the column headers sot aht the column names are capitalised acronyms
SELECT  title AS T, 
		rental_duration AS RD, 
		rental_rate AS RR, 
		eplacement_cost AS RC 
FROM film;

-- Change the cosakila, title, rental_duration, rental_rate, replacement_costlumn headers to remove the underscore in the column name
SELECT  title AS Title, 
		rental_duration AS `Rental Duration`, 
		rental_rate AS `Rental Rate`, 
		replacement_cost AS `Replacement Cost`
FROM film;

-- Using the above query, change the table name to be the letter `f`
SELECT  title AS Title, 
		rental_duration AS `Rental Duration`, 
		rental_rate AS `Rental Rate`, 
		replacement_cost AS `Replacement Cost`
FROM film AS `f`;
