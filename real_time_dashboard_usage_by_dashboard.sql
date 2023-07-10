select 
  public.report_dashboard.name as dashboard,
  count(*)
from public.view_log
inner join public.report_dashboard on (public.report_dashboard.id = public.view_log_model_id)
inner join public.core_user on (public.view_log_user_id = public.core_user_id) 
where public.view_log.model = 'dashboard'
and public.view_log.timestamp > current_date - 2
group by 1
order by 2 desc
