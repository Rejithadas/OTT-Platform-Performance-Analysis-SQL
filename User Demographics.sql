-- User Demographics 
-- Distribution of users by age group for each platform
select 
	age_group,count(user_id) as total_users
from liocinema_db.subscribers
group by age_group
order by total_users desc;

select 
	age_group,count(user_id) as total_users
from jotstar_db.subscribers
group by age_group
order by total_users desc;

-- Distribution of users by city tier for each platform
select 
	city_tier,count(user_id) as total_users
from liocinema_db.subscribers
group by city_tier
order by total_users desc;

select 
	city_tier,count(user_id) as total_users
from jotstar_db.subscribers
	group by city_tier
    order by total_users desc;

-- Distribution of users by subscription plan for each platform
select 
	subscription_plan,count(user_id) as total_users
from liocinema_db.subscribers
group by subscription_plan
order by total_users desc;
    
select 
	subscription_plan,count(user_id) as total_users
from jotstar_db.subscribers
group by subscription_plan
order by total_users desc;
