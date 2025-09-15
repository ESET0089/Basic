-- Create Trigger 
create trigger trg_AfterInsert_Student
on student
after insert
as 
begin
	print 'A new student record has been inserted';
end;

-- Insert record
insert into student values (6, 'Karthik', 4389);