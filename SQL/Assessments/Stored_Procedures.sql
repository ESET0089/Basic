-- Creates a new stored procedure
CREATE PROCEDURE retrive_data
AS
BEGIN
    select * from Employee
END

-- Execute procedure
EXEC retrive_data 

-- Drop procedure
DROP PROCEDURE retrive_data

-- Stored procedure with input parameters
CREATE PROCEDURE retrive_data
@emp_ID int
AS
BEGIN
    select * from Employee where emp_ID =@emp_ID
END

-- Execute procedure
EXEC retrive_data @emp_id=4


-- Check Employee Salary
CREATE PROCEDURE CheckEmployeeSalary
@emp_ID int
AS
BEGIN
    DECLARE @salary INT;

	SELECT @salary = salary
	from Employee
	where emp_ID = @emp_ID

	if @salary >= 50000
		print 'High salary employee'

	else if @salary >= 30000
		print 'Medium salary employee'
	else
		print 'Less salary employee'
END

-- Execute procedure
EXEC CheckEmployeeSalary @emp_id=4

