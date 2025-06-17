Top Mileage Brands
select
 Brand, sum(Mileage) as total_mileage
 from car_price_dataset2
 group by Brand
 order by total_mileage desc
 limit 10;