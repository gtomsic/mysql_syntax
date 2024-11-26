-- Observe the employees and salary table
SELECT * FROM employees;
-- ----------------------------------------------------------
/* STEPS
1. Identify the tables you would like to join (provide a table alias for simplicity)
2. Establish the type of join required (how do you envisage the end result)
3. Establish joining condition
4. Choose columns of data you want in your single result*/

-- Obtain the emp_id, first name & last name from the employee table and current salarry from the salary table
SELECT 	l.emp_id,
		l.first_name,
		l.last_name,
        r.current_salary
FROM employees AS l
INNER JOIN 
salary AS r
ON l.emp_id = r.employee_id;

-- Rename the salary table emp_id column to employee_id and conduct same join as previous example
ALTER TABLE salary
CHANGE COLUMN emp_id employee_id INT NOT NULL;

SELECT * FROM salary;