-- 1667. Fix Names in a Table
select user_id,concat(upper(substring(name,1,1)),lower(substring(name,2))) as name from Users
group by user_id
order by user_id;