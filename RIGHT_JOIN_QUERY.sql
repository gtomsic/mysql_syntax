-- Observe the employees and salary table
SELECT * FROM employees;
/*STEPS
1. Identify the tables you would like to join (provide a table alias for simplicity)
2. Establish the type of join required (how do you enviage the end result)
3. Establish joining condition
4. Choose columns of data you want in your gingle result*/

-- Obtain all information from the employees table and join to salary table to bring back the employees first name
SELECT 	r.*,
		l.first_name
FROM employees AS l
RIGHT JOIN
salary AS r
ON  l.emp_id = r.employee_id;