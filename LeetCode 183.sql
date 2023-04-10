-- 183. Customers Who Never Order

-- Write an SQL query to report all customers who never order anything.Return the result table in any order.

select name as Customers from Customers c left join orders o on c.id=o.customerId
where o.id is null; 
