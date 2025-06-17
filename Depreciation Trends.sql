 Depreciation Trends
select
Year,avg(price) as depreciation_year
from car_price_dataset2
group by year
order by Year desc ;