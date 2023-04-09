-- 175. Combine Two Tables

# Write your MySQL query statement below
select p.firstName,p.lastName,a.city,a.state from Person p 
LEFT JOIN Address a
ON p.personId=a.personId order by p.firstName;