# Used_Car_-SQL-Analysis
## Overview
### This project explores a used car dataset using Sql to uncover meaningful insights that can guide data-driven decisions in the automotive resale-market. This analysis covers brand popularity, pricing trends, fuel preferences, transmission types, and the impact of mileage and vehicle age on price.
## Dataset Description
### The dataset includes the following columns:
### Brand: Manufacturer of the car
### Year: Year the car was manufactured
### Engine Size: Engine capacity
### Fuel Type: Type of fuel (e.g petrol, Disesel, Hybrid, Electric)
### Transmission: Gear system (Manual, Automatic and Semi-a=Automatic
### Mileage: Total distance the car has traveled
### Doors: Number of the car doors
### Owner Count: Number of previous owners
### Price: Listed selling price of the car
## Objectives
### Identify the most popular car brands
### Determine the Highest Average Price by Brand
### Analyze the Distrubution of Fuel Types
### Evaluate Price Trend Over the Years
### Study Mileage and Price Ptterns
### Compare Average Price by Transmission
## SQL Queries
1 Most popular car brand
### select
### Brand,
count(*) as popular_car
from car_price_dataset2
group by Brand
order by count(*) desc;

2 Brand with highest average price
select
Brand, avg(Price) as average_price
from car_price_dataset2
group by Brand
order by average_price desc;

3 Average price by year
select
Year,avg(price) as depreciation_year
from car_price_dataset2
group by year
order by Year desc ;
4 
select
 Brand, sum(Mileage) as total_mileage
 from car_price_dataset2
 group by Brand
 order by total_mileage desc
 limit 10;
 
 5 Most common fuel type
 select
 Brand, Fuel_Type, count(*) as count_fuel_type
 from car_price_dataset2
 group by Brand, Fuel_Type
 order by count_fuel_type desc; 
 6 Average mileage for Ford
 select
 Brand, avg(Mileage) as average_mileage
 from car_price_dataset2
 where Brand = "Ford"
 group by Brand;
 
 select
 Brand, avg(Mileage) as average_mileage
 from car_price_dataset2
 group by Brand
 order by average_mileage asc;
 
 select Transmission, avg(Price) as transmission_price
 from car_price_dataset2
 group by Transmission
 order by transmission_price desc;
 



