-- The email for Amelia Taylor has been activated. Update the email address to ameliataylor@shop.co.uk
UPDATE employee 
SET 
	email = 'ameliataylor@shop.co.uk'
WHERE emp_id = 1;

SELECT * FROM employee;
-- Lee Hart's email has been activated and he has a new contact number 07891011121. Simultaneaously update both
UPDATE employee
SET 
	email = 'leehart@shop.co.uk',
    contact = '07891011121'
WHERE emp_id = 2;
SELECT * FROM employee;
-- Rishi Stokes has handed his notice in. Update the employee table accordingly
UPDATE employee
SET 
	notice_period = 1
WHERE emp_id = 6;
SELECT * FROM employee;

-- The shop has change strategy and now sell fruit only. All email addressess now end in @fruitshop.com 
UPDATE employee
SET
	email = REPLACE(email, '@shop.co.uk', '@fruitshop.com')
WHERE emp_id >= 1;

SELECT * FROM employee;
