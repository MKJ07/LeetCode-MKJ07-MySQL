-- 1484. Group Sold Products By The Date
-- Using group concat function
-- GROUP_CONCAT(DISTINCT column_name ORDER BY  column_name ASC SEPARATOR ' ') seperator can be ' ' , ',' or anything 

select sell_date,count(DISTINCT product) as num_sold,group_concat(DISTINCT product order by product ASC separator ',') as products from Activities
group by sell_date
order by sell_date;