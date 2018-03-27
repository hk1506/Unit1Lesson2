select
	start_station,
	count(*) start_station
from
	trips
group by start_station

