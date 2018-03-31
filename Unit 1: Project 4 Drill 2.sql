select
	status.station_id,
	stations.name,
	count(case when docks_available = 0 then 1 end) empty
from
	status
join
	stations
on
	stations.station_id = status.station_id
group by 1
order by empty desc