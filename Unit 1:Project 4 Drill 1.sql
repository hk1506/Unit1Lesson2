select 
	t.duration,
	w.Events
from
	trips t
join
	weather w
on
	t.zip_code=w.ZIP and
	substr(t.start_date,1,10) = w.Date
where
	w.Events = 'Rain'
order by duration desc
limit 3


