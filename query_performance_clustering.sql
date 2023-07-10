with query_data as (
  select
    c.name as name,
    count(*) as number_executions,
    percentile_cont(0.5) within group (order by running_time/1000) as median_execution_time_seconds,
    max(running_time / 1000) as max_execution_time_seconds
  from public.query_execution q
  left join public.report_card c on (q.card_id = c.id)
  where q.started_at::date > current_date - 90
  group by 1)
select 
  case
    when median_execution_time_seconds < 3 then 'a__less_3_seconds'
    when median_execution_time_seconds < 10 then 'b__less_10_seconds'
    when median_execution_time_seconds < 30 then 'c__less_30_seconds'
    when median_execution_time_seconds < 60 then 'd__less_60_seconds'
    when median_execution_time_seconds < 180 then 'e__less_180_seconds'
    else 'f__more_180_seconds'
  end as second_clusters,
  count(*)
from query_data
group by 1
order by 1
