USE EMP

-- Check all tables
SELECT * FROM books as b;
SELECT * FROM users as u;
SELECT * FROM orders as o;

select * from users u INNER JOIN orders o on u.users_id = o.users_id INNER JOIN books b on o.product_id = b.product_id where b.price =1500


INSERT INTO orders VALUES (107, 5, 17),(108, 2, 13),(109, 3, 16),(110, 5, 12),(111, 2, 10),(112, 5, 16),(113, 4, 13)

select u.names, b.title, b.price, ROW_NUMBER() OVER (partition by u.names order by b.price desc) as top2 from users u INNER JOIN orders o on u.users_id = o.users_id INNER JOIN books b on o.product_id = b.product_id group by u.names, b.title, b.price
