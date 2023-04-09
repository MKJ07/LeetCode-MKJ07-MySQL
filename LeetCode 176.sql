-- 176. Second Highest Salary

# Write your MySQL query statement below
# select case when count(id)<=1 then 'null' else salary end as SecondHighestSalary from Employee 
# where salary <> (select * from (select salary from Employee order by salary desc limit 1) as high)
# order by salary desc
# limit 1; 
select Max(salary) as SecondHighestSalary from Employee where salary <> (Select Max(salary) from Employee);