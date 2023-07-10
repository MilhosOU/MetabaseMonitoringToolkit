select 
  to_char(public.view_log.timestamp + interval + '2 hours', 'yyyy_mm_dd') as event_at,
  count(*)
from public.view_log
inner join public.report_dashboard on (public.report_dashboard.id = public.view_log_model_id)
inner join public.core_user on (public.view_log_user_id = public.core_user_id) 
where public.report_dashboard.id in ()
and public.view_log.model = 'dashboard'
and public.view_log.timestamp > current_date - 90
group by 1
order by 1
