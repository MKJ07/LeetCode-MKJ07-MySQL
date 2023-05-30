-- 619. Biggest Single Number

-- A single number is a number that appeared only once in the MyNumbers table.
-- Write an SQL query to report the largest single number. If there is no single number, report null.

select max(num) as num from MyNumbers
where num in (select num from MyNumbers
group by num
having count(num)=1);
