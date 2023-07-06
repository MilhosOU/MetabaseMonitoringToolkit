with 
    queries_in_dashboards as(
        select distinct
            card_id as id
        from report_dashboardcard)
select
    r.name,
    count(*) as changes,
    count(distinct a.user_id) as changers
from queries_in_dashboards q
inner join activity a on(a.model_id = q.id)
left join core_user c on (a.user_id = c.id)
left join report_card r on (r.id = q.id)
group by 1
order by 2 desc
