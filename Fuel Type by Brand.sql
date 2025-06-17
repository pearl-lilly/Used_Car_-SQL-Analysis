 Fuel Type by Brand
 select Brand, Fuel_Type, count(*) as count_fuel_type
 from car_price_dataset2
 group by Brand, Fuel_Type
 order by count_fuel_type desc;