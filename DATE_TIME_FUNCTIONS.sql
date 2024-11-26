SELECT 	rental_date,
		return_date,
        NOW() AS `Date & Time Now`,
        DATE_ADD(NOW(), INTERVAL 5 MONTH) AS `Date & Time in Future`, -- Altering the date and time 5 month in the future
        DATE_SUB(NOW(), INTERVAL 5 DAY) AS `Date & Time in Past`, -- Altering the date and time 5 days ago prior to current date and time
        ADDTIME(NOW(), '2 03:10:03') AS `Add Time`, -- Add time prior to current time and date with 2 days to the future
        SUBTIME(NOW(), '2 03:10:03') AS `Sub Time`, -- Subtract time prios to current time and date with 2 days 
        DATEDIFF(return_date, rental_date) AS `Date Diff`,
        TIMEDIFF(return_date, rental_date) AS `Time Diff`,
        TIMESTAMPADD(MONTH, 3, NOW()) AS `TS Add`,
        TIMESTAMPDIFF(YEAR, NOW(), rental_date) AS `TS DIFF`, -- The difference YEAR between two Dates is going to return
        SEC_TO_TIME(UNIX_TIMESTAMP(return_date) - UNIX_TIMESTAMP(rental_date)) AS `Unix TS Diff`, -- Same result as TIMEDIFF would return the time difference
        PERIOD_ADD(202101, 11) AS `Period +`,
        PERIOD_DIFF(202305, 202101) AS `Period Diff`,
        LAST_DAY(return_date) AS `Month End` -- Would give you the last day of the month in previos year or future
FROM rental;