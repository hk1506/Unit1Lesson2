with
	location
as (
	select
        listing_id, price, available,
		count(*)
    from
        calendar c
    group by 1
)
select
	location.listing_id,
	location.price,
	location.available
from 
	location
join
	listings 
on
	location.listing_id = listings.id
	

