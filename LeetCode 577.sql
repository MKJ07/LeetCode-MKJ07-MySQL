-- 577. Employee Bonus 

-- Write an SQL query to report the name and bonus amount of each employee with a bonus less than 1000.
-- Return the result table in any order.
#this is my query and its returning the same result but not accepted 
select e.name,ifnull(b.bonus,'null') as bonus from employee e left join bonus b
on e.empId=b.empId
having bonus<1000;

-- and this query is working dont know why
# SELECT e.name ,b.bonus FROM employee e LEFT JOIN bonus b
# ON b.empid=e.empid WHERE IFNULL(b.bonus,0) <1000;
