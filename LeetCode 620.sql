-- 620. Not Boring Movies

-- Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".
-- Return the result table ordered by rating in descending order.

select * from Cinema 
where mod(id,2)!=0 and description!='boring'
order by rating desc;