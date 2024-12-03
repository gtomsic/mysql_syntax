INSERT INTO employee (first_name, last_name, date_of_birth)
VALUES('Amelia', 'Taylor', '1985-05-10');

-- INSERT MULTIPLE VALUES 
INSERT INTO employee (first_name, last_name, date_of_birth)
VALUES ('Lee', 'Hart', '1975-08-16'),
		('Abby', 'McCarthy', '1992-02-05');
        
INSERT INTO employee (first_name, last_name, date_of_birth, email, contact, notice_period)
VALUES 
	('Graham', 'Forst', '1989-07-13', DEFAULT, DEFAULT, TRUE),
    ('Shreya', 'Felix', '1972-11-24', 'shreyafelix@shop.co.uk', DEFAULT, DEFAULT),
    ('Rishi', 'Stokes', '1987-04-08', DEFAULT, DEFAULT, DEFAULT);

SELECT * FROM employee;