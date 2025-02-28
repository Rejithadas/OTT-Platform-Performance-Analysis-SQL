-- Active vs Inactive Users 
-- What percentage of LioCinema and Jotstar users are active vs. inactive? 
select 
    round(sum(case when last_active_date is null then 1 else 0 end)/count(user_id)*100,2) as pct_active_users,
	round(sum(case when last_active_date is not null then 1 else 0 end )/count(user_id)*100,2) as pct_inactive_users
from liocinema_db.subscribers ;

select 
    round(sum(case when last_active_date is null then 1 else 0 end)/count(user_id)*100,2) as pct_active_users,
	round(sum(case when last_active_date is not null then 1 else 0 end )/count(user_id)*100,2) as pct_inactive_users
from jotstar_db.subscribers ;

-- How do these rates vary by age group ?
select 
	age_group,
    round(sum(case when last_active_date is null then 1 else 0 end)/count(user_id)*100,2) as pct_active_users,
	round(sum(case when last_active_date is not null then 1 else 0 end )/count(user_id)*100,2) as pct_inactive_users
from liocinema_db.subscribers
group by age_group
order by age_group;
    
select 
	age_group,
    round(sum(case when last_active_date is null then 1 else 0 end)/count(user_id)*100,2) as pct_active_users,
	round(sum(case when last_active_date is not null then 1 else 0 end )/count(user_id)*100,2) as pct_inactive_users
from jotstar_db.subscribers
group by age_group
order by age_group;
    
-- How do these rates vary by subscription plan?
select 
	subscription_plan,
    round(sum(case when last_active_date is null then 1 else 0 end)/count(user_id)*100,2) as pct_active_users,
	round(sum(case when last_active_date is not null then 1 else 0 end )/count(user_id)*100,2) as pct_inactive_users
from liocinema_db.subscribers
group by subscription_plan
order by subscription_plan;

select 
	subscription_plan,
    round(sum(case when last_active_date is null then 1 else 0 end)/count(user_id)*100,2) as pct_active_users,
	round(sum(case when last_active_date is not null then 1 else 0 end )/count(user_id)*100,2) as pct_inactive_users
from jotstar_db.subscribers
group by subscription_plan
order by subscription_plan;
