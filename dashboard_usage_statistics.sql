select
  public.core_user.last_name,
  count(distinct public.view_log.id)
from public.view_log
inner join public.report_dashboard on (public.view_log.model_id = public.report_dashboard.id)
inner join public.core_user on (public.view_log.user_id = public.core_user.id)
where public.view_log.model = 'dashboard'
group by 1
order by 2 desc
