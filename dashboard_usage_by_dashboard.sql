select 
  public.report_dashboard.name as dashboard,
  count(*)
from public.view_log
inner join public.report_dashboard on (public.report_dashboard.id = public.view_log_model_id)
inner join report_dashboard r on (a.model_id = r.id)
where public.report_dashboard.id in ()
and public.view_log.model = 'dashboard'
and public.view_log.timestamp > current_date - 30
group by 1
order by 2 desc
