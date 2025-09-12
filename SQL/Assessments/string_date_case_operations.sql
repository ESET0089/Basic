CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');


CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');


CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');


CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);


---------------------------------------------------------------

-- Tasks
-- Show a list of all student names (unique only)
Select Name from Students2024
Union
Select Name from Students2025

-- Show a list of all student names (including duplicates)
Select Name from Students2024
Union All
Select Name from Students2025

--Display employee names in UPPERCASE and LOWERCASE.
SELECT UPPER(Name) AS UppercaseEmpName 
FROM Employees;
SELECT LOWER(Name) AS UppercaseEmpName 
FROM Employees;

--Find the length of each employee’s name.
SELECT LEN(Name) AS NameLength 
FROM Employees;

--Show only the first 3 letters of each name.
SELECT SUBSTRING(Name, 1, 3) AS Name 
FROM Employees;

--Replace Finance department with Accounts.
SELECT REPLACE(Department, 'Finance', 'Accounts') AS NameReplace 
FROM Employees;

--Create a new column showing "Name - Department" using CONCAT.

--Show today’s date using GETDATE().

--Find the duration (in days) of each project using DATEDIFF.

--Add 10 days to each project’s EndDate using DATEADD.

--Find how many days are left until each project ends. (Hint: Use DATEDIFF with GETDATE())

--Convert today’s date into DD/MM/YYYY format using CONVERT.

--Convert a float 123.456 into an integer using CAST.

--For employees (from Employees table above), categorize them:

--If Dept = IT → show Tech Team

--If Dept = HR → show Human Resources

--Else → Other
