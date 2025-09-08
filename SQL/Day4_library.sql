USE emp;

-- Create users table
CREATE TABLE users (
    users_id INT PRIMARY KEY,
    email VARCHAR(50),
    names VARCHAR(50)
);

-- Insert sample users
INSERT INTO users VALUES (1, 'shiva@email.com', 'Shiva');
INSERT INTO users VALUES (2, 'raj@email.com', 'Raj');

-- Create books table
CREATE TABLE books (
    product_id INT PRIMARY KEY,
    title VARCHAR(50),
    price INT
);

-- Insert sample book
INSERT INTO books VALUES (13, 'Kaliyug', 300);

-- Create orders table with foreign keys
CREATE TABLE orders (
    order_no INT PRIMARY KEY,
    users_id INT,
    product_id INT,
    FOREIGN KEY(users_id) REFERENCES users(users_id),
    FOREIGN KEY(product_id) REFERENCES books(product_id)
);

-- Insert valid orders (product_id must exist in books, users_id must exist in users)
INSERT INTO orders VALUES (102, 1, 13);
INSERT INTO orders VALUES (103, 2, 13);

-- Check all tables
SELECT * FROM books;
SELECT * FROM users;
SELECT * FROM orders;

----------------------------------------------------------
-- Employee table queries
----------------------------------------------------------

-- View Employee table details
EXEC sp_help Employee;

-- Employees with ID <= 3
SELECT * FROM Employee WHERE emp_ID <= 3;

-- Employees with non-null salary
SELECT * FROM Employee WHERE salary IS NOT NULL;

-- Employees where name contains 'h' but not ending with 'h'
SELECT * FROM Employee WHERE emp_name LIKE '%h%' AND emp_name NOT LIKE '%h';

-- Employee(s) with max salary
SELECT * FROM Employee 
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- Employees with salary between 150000 and 300000
SELECT * FROM Employee 
WHERE salary IN (SELECT salary FROM Employee WHERE salary BETWEEN 150000 AND 300000);

-- Maximum salary
SELECT MAX(salary) AS max_salary FROM Employee;

-- Count of employees with salary = 100000
SELECT COUNT(*) AS employee_with_one_lakh FROM Employee WHERE salary = 100000;

-- Order employees by salary (descending)
SELECT * FROM Employee ORDER BY salary DESC;
