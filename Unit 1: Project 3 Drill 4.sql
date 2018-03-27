select
	trip_id,
	AVG(duration),
	end_station
from
	trips
group by end_station

