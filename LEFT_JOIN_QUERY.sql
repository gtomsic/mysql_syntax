-- Observe the employees and salary table

SELECT * FROM employees;
SELECT * FROM salary;

/*STEPS
1. Identify the tables you would like to join (provide a table alias for simplicity)
2. Establish the type of join required (how do you enviage the end result)
3. Establish joining condition
4. Choose columns of data you want in your gingle result*/

-- Obtain all information from the employees table and join to salary table to bring back prior and current salary
SELECT 	l.*,
		r.prior_salary,
        r.current_salary
FROM employees AS l
LEFT JOIN
salary AS r
ON l.emp_id = r.employee_id;