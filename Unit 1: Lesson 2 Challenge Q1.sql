select
id, cast(substr(price,2)as decimal) nprice, city, accommodates,
cast(square_feet as decimal) sqfeet
from
listings
order by nprice desc

