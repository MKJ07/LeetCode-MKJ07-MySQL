-- 1068. Product Sales Analysis I

-- Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.
-- Return the resulting table in any order.

select p.product_name,s.year,s.price from Sales s join Product p
where p.product_id=s.product_id ;
