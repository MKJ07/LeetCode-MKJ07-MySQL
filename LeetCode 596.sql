-- 596. Classes More Than 5 Students 

-- Write an SQL query to report all the classes that have at least five students.
-- Return the result table in any order.

select class from Courses
group by class
having count(class)>=5;

