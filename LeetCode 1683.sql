 -- Write your MySQL query statement below
-- Question: 1683. Invalid Tweets.

-- Write a solution to find the IDs of the invalid tweets. 
-- The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
-- Return the result table in any order.
 
select tweet_id from Tweets where length(content)>15