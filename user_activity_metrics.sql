select 
	first_name,
	last_name,
	count(*) as questions_viewed,
	count(distinct date_trunc('day',view_log.timestamp)) as days_active
from core_user
inner join view_log on view_log.user_id = core_user.id
where view_log.timestamp::date > current_date - 90
and is_super_user is true
group by 1,2
order by 3 desc
