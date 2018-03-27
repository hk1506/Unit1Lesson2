select
	date,
	MAX(MaxTemperatureF),
	zip
from
	weather
group by date
order by MAX(MaxTemperatureF) DESC
