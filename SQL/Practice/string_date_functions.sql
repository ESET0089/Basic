-- Switch to database
USE emp;

SELECT * FROM Employee;

-- Create new Employee1 table
CREATE TABLE Employee1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(50),
    salary FLOAT
);

-- Insert into Employee1
INSERT INTO Employee1 VALUES (2, 'Gh', 'IT', 120000);

-- UNION function
SELECT id, name FROM Employee1
UNION
SELECT emp_id, emp_name FROM Employee;

-- UPPER function
SELECT UPPER(emp_name) AS UppercaseEmpName 
FROM Employee;

-- LOWER function
SELECT LOWER(emp_name) AS LowercaseEmpName 
FROM Employee;

-- LEN function
SELECT LEN(name) AS NameLength 
FROM Employee1;

-- SUBSTRING function
SELECT SUBSTRING(emp_name, 2, 4) AS Name 
FROM Employee;

-- REVERSE function
SELECT REVERSE(emp_name) AS Reverse 
FROM Employee;

-- REPLACE function (string literal)
SELECT REPLACE('Gokul like chai', 'chai', 'coffee') AS Coffee;

-- REPLACE function (column value)
SELECT REPLACE(emp_name, 'Abhishek', 'Pooja') AS NameReplace 
FROM Employee;

-- CONCAT function
SELECT CONCAT('Ganeh', ' ', 'plays table tennis') AS Games;

-- CAST function (string → int)
SELECT CAST('100000' AS INT) AS salary;

-- CAST function (column → float)
SELECT CAST(emp_id AS FLOAT) 
FROM Employee;

-- GETDATE function
SELECT GETDATE() AS todaydate;

-- CONVERT function
SELECT CONVERT(VARCHAR(10), GETDATE(), 103) AS date_dd_mm_yyyy;
