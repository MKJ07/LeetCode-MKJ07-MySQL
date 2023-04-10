-- 1873. Calculate Special Bonus

-- Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number 
-- and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.
-- Return the result table ordered by employee_id.

select employee_id,case when mod(employee_id,2)<>0 and name not like 'M%' then salary 
else 0 end as bonus from Employees order by employee_id;
