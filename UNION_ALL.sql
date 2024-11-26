-- Set up two tables for UNION examples
CREATE TABLE table1 (
			code1 INT,
            code2 INT
            );
CREATE TABLE table2 LIKE table1;

INSERT INTO table1(code1, code2)
VALUES (1, 1),
		(1, 2),
        (1, 3),
        (1, 4),
        (1, 5);
INSERT INTO table2(code1, code2)
VALUES (2, 1),
		(3, 1),
        (4, 1),
        (5, 1);
SELECT * FROM table1;
SELECT * FROM table2;

-- UNION operator
SELECT * FROM table1
UNION
SELECT * FROM table2;

-- UNION ALL operator
SELECT * FROM table1
UNION ALL
SELECT * FROM table2;

-- Same amount of columns & compatible datatypes (Field headers take first statement column names)
SELECT first_name 
FROM customer
UNION 
SELECT last_name
FROM customer;

-- ORDER BY Code 2 - Must be placed after the last select statement!
SELECT * FROM table1
UNION ALL
SELECT * FROM table2
ORDER BY code2;

-- Table identifiers
SELECT *,
		'Table1' AS `Source`
FROM table1
UNION ALL
SELECT *,
		'Table2' AS `Source`
FROM table2
ORDER BY code2;

-- Perform a row count validation using the film table from the sakila schema
SELECT * FROM film
WHERE rating = 'G'
UNION DISTINCT
SELECT * FROM film
WHERE rating = 'G';
