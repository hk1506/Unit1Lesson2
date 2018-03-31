select
	start_station,
	dockcount
from 
	stations
join
	trips
on
	trips.start_station = stations.name
group by start_station, dockcount
order by dockcount desc
limit 10000
