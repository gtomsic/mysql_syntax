-- Select all rentals that were return on '2005-05-26 22:04:30'
SELECT * 
FROM rental
WHERE return_date = '2005-05-26 22:04:30';

-- Select all rentals taht were return on the '26th May 2005' -- use any format
SELECT * 
FROM rental
WHERE DATE(return_date) = '2005-05-26';

-- Select all rentals that return on '05/26/2005 at 22:04' (%m/%d/%Y %H:%i)
SELECT * 
FROM rental
WHERE DATE_FORMAT(return_date, '%m/%d/%Y %H:%i') = '05/26/2005 22:04';

-- Select all rentals that were return at 04:11:42 on any date
SELECT * 
FROM rental
WHERE TIME(return_date) = '04:11:42';

-- Select all rentals taht were returned between the 26th and 28th May 2005
SELECT *
FROM rental
WHERE return_date  BETWEEN '2005-05-26' AND '2005-05-28';

-- Select all rentals that were return between 4AM and 7AM on the 26th May
SELECT *
FROM rental
WHERE return_date  BETWEEN '2005-05-26 04:00' AND '2005-05-26 07:00';

-- Select all rentals that were return more than 9 days after their rental date
SELECT *
FROM rental
WHERE return_date > DATE_ADD(rental_date, INTERVAL 9 DAY);

-- Select all rentals that were returned between 6 or 8 days (inclusive) after their rental date
SELECT *,
		DATEDIFF(return_date, rental_date)
FROM rental
WHERE return_date BETWEEN DATE_ADD(rental_date, INTERVAL 6 DAY) AND DATE_ADD(rental_date, INTERVAL 8 DAY);