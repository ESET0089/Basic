-- Create a trigger
create trigger trg_AfterInsert_Books
on books
after insert
as 
begin
	print 'A new record has been inserted';
end;


-- Insert a new book
insert into books values (18, 'Game of Thrones', 7000);