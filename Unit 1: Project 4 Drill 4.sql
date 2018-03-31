--what's the length of the longest trip for each day it rains anywhere? 
--need to join weather, trip

with rainy as (
	select 
		date
	from
		weather
	where
		events = 'rain'
	group by 1),

rainytrip as (
	select
		trip_id, 
		duration,
		date(start_date) trip_date
	from 
		trips
	join
		rainy
	on rainy.date = trip_date
	order by duration desc)
	
select
	trip_date, 
	max(duration)
from rainytrip
group by 1
