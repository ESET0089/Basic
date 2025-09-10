USE emp
select * from Employee
insert into Employee Values (6, 'Raj', 'IT', 40000);
select dept, emp_name, salary, ROW_NUMBER() OVER (order by salary desc) as popularity from Employee

select dept, emp_name, salary, 
ROW_NUMBER() OVER (order by salary desc) as popularity,
RANK() OVER (order by salary desc) as popularity_rank,
DENSE_RANK() OVER (order by salary desc) as popularity_dense_rank
from Employee


select dept, emp_name, salary, ROW_NUMBER() OVER (partition by dept order by salary desc) as popularity from Employee

