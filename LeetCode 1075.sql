-- 1075. Project Employees I

-- Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
-- Return the result table in any order.

select p.project_id,round(avg(e.experience_years),2) as average_years from Employee e 
left join Project p on p.employee_id=e.employee_id
where p.project_id is not null
group by project_id;
