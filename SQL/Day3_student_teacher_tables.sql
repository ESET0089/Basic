-- Use database
USE emp;

-- Create Employee table
CREATE TABLE Employee (
    emp_ID INT,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary FLOAT
);

-- View Employee table
SELECT * FROM Employee;

-- Insert records
INSERT INTO Employee VALUES 
(1, 'Sharath', 'HR', 200000),
(2, 'Akash', 'IT', 100000),
(3, 'Abhishek', 'HR', 250000),
(4, 'Kunal', 'Marketing', 400000),
(5, 'Soumya', 'IT', 100000);

-- Update salary or phone (example using Employee table)
UPDATE Employee SET salary = 220000 WHERE emp_ID = 1;

-- Delete one record
DELETE FROM Employee WHERE emp_ID = 3;

-- Alter table: add, modify, drop, rename
ALTER TABLE Employee ADD phone_no VARCHAR(10);
ALTER TABLE Employee ALTER COLUMN salary VARCHAR(50);
ALTER TABLE Employee DROP COLUMN dept;
EXEC sp_rename 'Employee.phone_no', 'mobile_no', 'COLUMN';

SELECT * FROM Employee;

----------------------------------------------------------------------------------------------------------

-- Create student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    names VARCHAR(50)
);

-- View student table
SELECT * FROM student;

-- Insert valid records (only 2 columns available)
INSERT INTO student VALUES (1, 'Amit');
INSERT INTO student VALUES (2, 'Shiva');
INSERT INTO student VALUES (3, 'Raj');
INSERT INTO student VALUES (4, 'Neha');

-- Alter table: add and drop a column
ALTER TABLE student ADD number INT UNIQUE;
ALTER TABLE student DROP COLUMN number;

-- Create teachers table with foreign key referencing student(id)
CREATE TABLE teachers (
    id INT,
    subjects VARCHAR(50),
    FOREIGN KEY(id) REFERENCES student(id)
);

-- Insert into teachers (must match student.id, otherwise error)
INSERT INTO teachers VALUES (2, 'science');
INSERT INTO teachers VALUES (6, 'maths');   -- will fail (id=6 not in student)
