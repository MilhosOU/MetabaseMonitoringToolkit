select 
  report_dashboard.name as dashboard,
  count(*)
from metabase.view_log
inner join metabase.report_dashboard on (metabase.report_dashboard.id = metabase.view_log.model_id)
inner join metabase.core_user on (metabase.view_log.user_id = metabase.core_user.id) 
where metabase.view_log.model = 'dashboard'
and metabase.view_log.timestamp > current_date - 2
group by 1
order by 2 desc
