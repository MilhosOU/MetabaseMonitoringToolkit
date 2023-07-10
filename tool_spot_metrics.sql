select distinct
    public.view_log.timestamp,
    public.view_log.id,
    public.report_card.name as query_name,
    public.core_user.first_name as first_name,
    public.core_user.last_name as last_name
from public.view_log
inner join public.report_card on (public.view_log.model_id = public.report_card.id)
inner join public.core_user on (public.view_log.user_id = public.core_user.id)
order by 1 desc
