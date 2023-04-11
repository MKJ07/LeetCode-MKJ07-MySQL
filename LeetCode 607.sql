-- 607. Sales Person

-- Write an SQL query to report the names of all the salespersons who did not have any orders related to the company with the name "RED".
-- Return the result table in any order.

select s.name from SalesPerson s 
where s.sales_id not in (select o.sales_id from Orders o inner join Company c 
on o.com_id=c.com_id where c.name='RED') 
order by s.name;