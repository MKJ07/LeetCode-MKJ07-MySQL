-- 1890. The Latest Login in 2020

-- Write an SQL query to report the latest login for all users in the year 2020. Do not include the users who did not login in 2020.
-- Return the result table in any order.

# Write your MySQL query statement below
select distinct user_id, max(time_stamp) as last_stamp from Logins
where year(time_stamp)='2020' 
group by user_id 
order by last_stamp desc;