-- Create and use database
CREATE DATABASE employees;
USE employees;

-- Create employees table
CREATE TABLE employees(
    EMPID INT,
    Name VARCHAR(50),
    Branch VARCHAR(100),
    Salary INT
);

-- Insert records
INSERT INTO employees VALUES 
(1,'A','Mech',10000),
(2,'B','Industrial',20000),
(3,'C','ENtc',30000),
(4,'D','Civil',40000),
(5,'E','Thermal',50000);

-- Queries & updates
SELECT * FROM employees;
SELECT * FROM employees WHERE Salary > 20000;
UPDATE employees SET Name='Shivam' WHERE EMPID=4;
DELETE FROM employees WHERE Name='Shivam';

-- Table modifications
ALTER TABLE employees ADD phonennumber VARCHAR(50);
ALTER TABLE employees ALTER COLUMN phonennumber BIGINT;
EXEC sp_help 'employees';
ALTER TABLE employees DROP COLUMN phonennumber;
EXEC sp_rename 'employees.Name', 'empname', 'COLUMN';

-- Rename table
EXEC sp_rename 'employees', 'emp';
EXEC sp_help emp;

-- Drop table
DROP TABLE employees; 
