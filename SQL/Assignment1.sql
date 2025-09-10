
-- Find all the books all the users and all the orders
select * from users A FULL OUTER JOIN orders B on A.users_id = B.users_id  FULL OUTER JOIN books C on B.product_id = C.product_id

-- Find all orders
select * from orders b LEFT JOIN books C on B.product_id = C.product_id

-- Find book name, user name and price for book id 15, 16, 17
select C.title, A.names, C.price from users A inner join orders B on A.users_id = B.users_id inner join books C on B.product_id = C.product_id where (C.product_id in (15, 16, 17))

-- Find books users have ordered and display book name, user name and price
select C.title, A.names, C.price from users A inner join orders B on A.users_id = B.users_id inner join books C on B.product_id = C.product_id 

-- Find Total Price of books user has order




