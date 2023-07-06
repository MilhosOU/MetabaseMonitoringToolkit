with query as (
    select
        card_id,
        max(started_at) as latest_query_time
    from query_execution
    where started_at >= current_date - 30
    group by 1
), latest_query as (
    select
        query_execution.*
    from
        query_execution
    inner join
        query
        on query_execution.card_id = query.card_id
        and query_execution.started_at = query.latest_query_time
), joined as (
    select
        latest_query.*,
        report_card."name" as card_name,
        core_user.email as creator_email
    from
        latest_query
    left join
        report_card
        on latest_query.card_id = report_card.id
    left join
        core_user
        on report_card.creator_id = core_user.id
)
select
    card_id,
    card_name,
    creator_email,
    error,
    started_at as last_queried_at
from joined
where error is not null
and error not like '%cancelled%'
and error not like '%permissions%'
and context = 'question'
order by 5 desc
