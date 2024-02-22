-- Question: 1378. Replace Employee ID With The Unique Identifier.
  
-- Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
-- Return the result table in any order.
  
select en.unique_id as unique_id,e.name from Employees e 
left join EmployeeUNI en on e.id=en.id;
