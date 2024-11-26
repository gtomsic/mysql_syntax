SELECT * FROM customer;
SELECT 	first_name,
		last_name,
        CONCAT(first_name, ' ', last_name) AS `Full Name`,
        LOWER(CONCAT(first_name, ' ', last_name)) AS `Full Name Lower`,
        INSTR(first_name, 'a'), -- Count how many letter 'a' in first name
        LENGTH(last_name), -- Count how many character in last name
        LEFT(first_name, 3),-- Take the first 3 character from left
        RIGHT(last_name, 2), -- Take the first 2 character from right
        REPLACE(first_name, 'AR', 'AARR'), -- Replace all AR in First Name
        SUBSTRING(last_name, 1, 2), -- Take a character first number is starting, second number how many
        SUBSTRING_INDEX(first_name,'A', 2), -- When see the first letter A and cut the rest starting point count 2
        LTRIM(first_name), -- Remove all white spaces from left
        RTRIM(first_name), -- Remove all white spaces from right
        TRIM(LEADING 'A' FROM first_name) -- BOTH remove character starting both sides, LEADING is from left, TRAILING is from right
FROM customer;