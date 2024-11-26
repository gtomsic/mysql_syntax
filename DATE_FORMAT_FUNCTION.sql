SELECT 	return_date,
		DATE_FORMAT(return_date, '%Y-%m-%d') AS `%Y-%m-%d`, 							-- Format as YYYY-MM-DD
        DATE_FORMAT(return_date, '%e/%c/%Y') AS `%e/%c/%Y`, 							-- Format as D/M/YYYY
        DATE_FORMAT(return_date, '%e/%c/%Y %H:%i') AS `%Y-%m-%d`, 						-- Format as D/M/YYYY HH:MM
        DATE_FORMAT(DATE_ADD(return_date, INTERVAL 5 MONTH), '%d-%b-%y') AS `%d-%b-%y` 	-- Format as D-MON-YY
FROM rental;