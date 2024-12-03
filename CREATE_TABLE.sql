CREATE TABLE IF NOT EXISTS employee (
	emp_id INT AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    first_last VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    email VARCHAR(255),
    contact VARCHAR(20),
    notice_period BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (emp_id)
);

SELECT * FROM employee;