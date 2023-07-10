select  
  r.name,
  count(*)
from report_dashboardcard q
inner join activity a on (a.model_id = q.id)
left join core_user c on (a.user_id = c.id)
left join report_card r on (r.id = q.id)
group by 1
order by 2 desc
