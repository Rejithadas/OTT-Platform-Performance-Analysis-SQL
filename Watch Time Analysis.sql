-- Watch Time Analysis 
-- What is the average watch time for LioCinema vs. Jotstar during the analysis period?
select 
	'liocinema' as platform,
	round(avg(total_watch_time_mins)/60,2) as avg_watch_time_hrs
from liocinema_db.content_consumption
union all 
select 
	'jotstar' as platform,
	round(avg(total_watch_time_mins)/60,2) as avg_watch_time_hrs
from jotstar_db.content_consumption;
 
-- How do the average watch time for LioCinema vs. Jotstar compare by device type ? 
select 
	device_type,
	round(avg(total_watch_time_mins)/60,2) as avg_watch_time_hrs
from liocinema_db.content_consumption
group by device_type;

select 
	device_type,
	round(avg(total_watch_time_mins)/60,2) as avg_watch_time_hrs
from jotstar_db.content_consumption
group by device_type;

-- How do the average watch time for LioCinema vs. Jotstar compare by city tier ? 
select 
	city_tier,
	round(avg(total_watch_time_mins)/60,2) as avg_watch_time_hrs
from liocinema_db.content_consumption c
join liocinema_db.subscribers s 
on c.user_id=s.user_id
group by city_tier;

select 
	city_tier,
	round(avg(total_watch_time_mins)/60,2) as avg_watch_time_hrs
from jotstar_db.content_consumption c
join jotstar_db.subscribers s 
on c.user_id=s.user_id
group by city_tier;