select
	l.neighbourhood_cleansed,
	count(*) number_of_rentals
from
	calendar c
join 
	listings l
on l.id = c.listing_id
where 
	c.available = "t"
group by neighbourhood_cleansed
order by count(*) desc
limit 5
