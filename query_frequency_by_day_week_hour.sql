select 
	case
		when extract(dow from started_at) = 0 then '0_Sun'
		when extract(dow from started_at) = 1 then '1_Mon'
		when extract(dow from started_at) = 2 then '2_Tue'
		when extract(dow from started_at) = 3 then '3_Wed'
		when extract(dow from started_at) = 4 then '4_Thu'
		when extract(dow from started_at) = 5 then '5_Fri'
		when extract(dow from started_at) = 6 then '6_Sat'
	end as day_of_week,
	extract(hour from started_at + INTERVAL '2 HOURS') as start_hour,
	count(*) as total_queries
from query_execution
where started_at >= current_date - 30
group by 1,2
