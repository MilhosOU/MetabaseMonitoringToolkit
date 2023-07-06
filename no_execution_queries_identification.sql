select
    c.name as name,
    count(*) as number_executions,
    percentile_cont(0.5) within group (order by running_time / 1000) as median_execution_time_seconds,
    max(running_time / 1000) as max_execution_time_seconds
from public.query_execution q
left join public.report_card c on (q.card_id = c.id)
where q.started_at::date > current_date - 90
group by 1
order by 2 desc
