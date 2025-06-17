-- most popular brands
select
Brand,
count(*) as popular_car
from car_price_dataset2
group by Brand
order by count(*) desc;