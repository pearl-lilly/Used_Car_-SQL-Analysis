 Average Mileage by Brand
 select Brand, avg(Mileage) as average_mileage
 from car_price_dataset2
 where Brand = "Ford"
 group by Brand;