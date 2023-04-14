-- 181. Employees Earning More Than Their Managers

-- Write an SQL query to find the employees who earn more than their managers.
-- Return the result table in any order.

# Write your MySQL query statement below
select e1.name as Employee from Employee e1 join Employee e2
on e2.id=e1.managerId and e2.salary<e1.salary
order by e1.name;