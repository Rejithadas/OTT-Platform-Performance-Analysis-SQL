-- Total Users --
select 'liocinema' as platform ,count(user_id) as total_users from liocinema_db.subscribers
union 
select 'jotstar' as platform ,count(user_id) as total_users from jotstar_db.subscribers;

-------------
-- Monthly Growth Trends -- 
select platform,monthname,total_users from (
select 
	'liocinema' as platform ,
	monthname(subscription_date) as monthname, count(user_id) as total_users 
from liocinema_db.subscribers 
group by monthname(subscription_date)
union all
select 
	'jotstar' as platform ,
	monthname(subscription_date) as monthname,count(user_id) as total_users 
from jotstar_db.subscribers 
group by monthname(subscription_date)) as combined 
order by monthname;

-- Monthly Growth Trends --
select 
	'liocinema' as platform ,
	DATE_FORMAT(subscription_date, '%m-%Y') as subscription,
    count(user_id) as total_users 
from liocinema_db.subscribers 
group by subscription
union all 
select 
	'jotstar' as platform ,
	DATE_FORMAT(subscription_date, '%m-%Y') as subscription,
    count(user_id) as total_users 
from jotstar_db.subscribers 
group by subscription
order by subscription;
    