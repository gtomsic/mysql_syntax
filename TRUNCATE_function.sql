-- Select all data from the employee table and observe the emp_id column
SELECT * FROM employee;

-- Graham Ford and Rishi Stokes have now serve their notice and have left the company. Delete records Where notice period is true
DELETE FROM employee
WHERE notice_period = True;

-- Select all data from employee tabloe and observe the emp_id column. What do you notice?
SELECT * FROM employee;

/*
A new person has been hire to replace Rishi Stokes. Insert the following employee
first_name = 'Daniel'
last_name = 'Fisher'
date_of_birth = '1973-09-01'
email = 'danielfisher@fruitshop.com'
contact= AS DEFAULT
notice_period = AS DEFAULT
*/

INSERT INTO employee (first_name, last_name, date_of_birth, email, contact, notice_period)
VALUE('Daniel', 'Fisher', '1973-09-01', 'danielfisher@fruitshop.com', DEFAULT, DEFAULT);

-- Select all data from the employee table and observe the emp_id column. What do you notice?
SELECT * FROM employee;

TRUNCATE TABLE employee;