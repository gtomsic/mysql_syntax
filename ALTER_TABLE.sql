-- Re-enter the employee information as per below
SELECT * FROM employee;

/*INSERT INTO employee (first_name, last_name, date_of_birth, email, contact, notice_period)
VALUES
	('Amelia', 'Taylor', '1985-05-10', 'ameliatalor@fruitshop.com', DEFAULT, DEFAULT),
    ('Lee', 'Hart', '1975-08-16', 'leehart@fruitshop.com', '07891011121', DEFAULT),
    ('Abby', 'McCarthy', '1992-02-05', 'abbymccarthy@fruitshop.com', DEFAULT, DEFAULT),
    ('Graham', 'Ford', '1989-07-13', 'grahamford@fruitshop.com', '07894657360', DEFAULT),
    ('Shreya', 'Felix', '1985-05-10', 'shreyafelix@fruitshop.com', DEFAULT, DEFAULT),
    ('Rishi', 'Stokes', '1985-05-10', 'rishistokes@fruitshop.com', '07765432100', DEFAULT),
    ('Daniel', 'Fisher', '1973-09-01', 'danielfisher@fruitshop.com', DEFAULT, DEFAULT);*/
    
-- ADD a column to the employee table called 'hire_date'
ALTER TABLE employee 
ADD hire_date DATE AFTER contact;

DESCRIBE employee;

-- Add two more column to the of the table simultaneously. The columns should be 'np_start' and 'np_end'
ALTER TABLE employee
ADD np_start DATE,
ADD np_end DATE;
DESCRIBE employee;

-- Modify the email column to have a datatype of VARCHAR(50) and add a not null contraint
ALTER TABLE employee
MODIFY email VARCHAR(50) NOT NULL;
DESCRIBE employee;

-- Rename the 'contact' column in the employee to 'contact_no'
ALTER TABLE employee
CHANGE COLUMN contact contact_no VARCHAR(20);
DESCRIBE employee;

-- Remove the np_start column from the employee table
ALTER TABLE employee
DROP COLUMN np_start;

-- Rename the employee table to 'employees'
ALTER TABLE employee
RENAME TO employees;
SELECT * from employees;
