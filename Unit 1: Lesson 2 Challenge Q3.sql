select
	c.listing_id, c.date, c.available, 
	cast(substr(l.price,2)as decimal),
	AVG(cast(substr(l.price,2)as decimal)) avgprice,
	count(*)
from
	calendar c
join
	listings l
on
	c.listing_id = l.id
where c.available='t'
group by date

