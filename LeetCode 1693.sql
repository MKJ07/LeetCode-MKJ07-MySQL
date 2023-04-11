-- 1693. Daily Leads and Partners

-- Write an SQL query that will, for each date_id and make_name, return the number of distinct lead_id's and distinct partner_id's. 

select date_id,make_name,count(distinct lead_id) as unique_leads,count(distinct partner_id) as unique_partners from DailySales where date(date_id) in (select date_id from DailySales)
group by date_id,make_name
order by date_id; 