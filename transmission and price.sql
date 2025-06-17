select Brand, avg(Mileage) as average_mileage
 from car_price_dataset2
 group by Brand
 order by average_mileage asc;