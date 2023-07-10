select 
  public.core_user.first_name,
  public.core_user.last_name,
  count(*) as dashboards_viewed,
  count(distinct date_trunc('day', view_log.timestamp)) as days_active
from public.view_log
inner join public.report_dashboard on (public.report_dashboard.id = public.view_log_model_id)
inner join public.core_user on (public.view_log_user_id = public.core_user_id) 
where public.view_log.model = 'dashboard'
and public.view_log.timestamp > current_date - 90
group by 1,2
order by 3 desc
