select 
  r.name,
  a.topic,
  count(*)
from activity a
left join core_user c on (a.user_id = c.id)
left join report_dashboard r on (a.model_id = r.id)
left join report_card rr on (a.model_id = cc.id)
where r.name is not null
group by 1,2
order by 1
