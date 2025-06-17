 average price by brand
select
Brand, avg(Price) as average_price
from car_price_dataset2
group by Brand
order by average_price desc;