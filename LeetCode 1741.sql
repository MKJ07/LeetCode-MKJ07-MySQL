-- 1741. Find Total Time Spent by Each Employee

-- Write an SQL query to calculate the total time in minutes spent by each employee on each day at the office. Note that within one day,
-- an employee can enter and leave more than once. The time spent in the office for a single entry is out_time - in_time.
-- Return the result table in any order.

# Write your MySQL query statement below

select event_day as day,emp_id,sum(out_time-in_time) as total_time from Employees
where date(event_day) in (select event_day from Employees)
group by event_day,emp_id
order by day;