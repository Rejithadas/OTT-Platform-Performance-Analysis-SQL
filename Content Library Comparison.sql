-- Content Library Comparison 
select 
	'liocinema' as platform,
	count(content_id) as total_contents
from liocinema_db.contents
union all 
select 
	'jotstar' as platform,
	count(content_id) as total_contents
from jotstar_db.contents;

-- Content Library Comparison (group by content_type)
select 
	content_type,
	count(content_id) as total_contents
from liocinema_db.contents
group by content_type;

select 
	content_type,
	count(content_id) as total_contents
from jotstar_db.contents
group by content_type;

-- Content Library Comparison (group by language)
select 
	language,
	count(content_id) as total_contents
from liocinema_db.contents
group by language;

select 
	language,
	count(content_id) as total_contents
from jotstar_db.contents
group by language;
    
-- Content Library Comparison (group by content_type,language)
select 
	content_type,language,
	count(content_id) as total_contents
from liocinema_db.contents
group by content_type,language;

select 
	content_type,language,
	count(content_id) as total_contents
from jotstar_db.contents
group by content_type,language;
    
