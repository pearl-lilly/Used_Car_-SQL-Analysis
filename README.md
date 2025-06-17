## 📘 Introduction

This project analyzes a dataset of 10,000 used car listings to uncover patterns in pricing, brand popularity, fuel preferences, and transmission types. The goal is to support data-driven decisions in the automotive resale market by providing insights into buyer behavior and product positioning.

### objctives

- Identify the most popular car brands.  
- Analyze average car prices by brand.  
- Examine price depreciation over time.  
- Explore mileage trends across top brands.  
- Understand fuel type distribution by brand.  
- Compare vehicle prices across transmission types.  

### 🛠️ Tools Used

* - SQL – for querying and analysis   

### 📊 Dataset Overview
- **Rows:** 10,000  
- **Columns:** 10  
- **Key Features:**  
  - Brand  
  - Model  
  - Year  
  - Engine_Size  
  - Fuel_Type  
  - Transmission  
  - Mileage  
  - Doors  
  - Owner_Count  
  - Price  

</details>

### 🔍 Insight 1: Most Popular Brands

**📈 Finding:**  
The top 5 most frequently listed car brands are **Ford (1,048)**, **Audi (1,038)**, **Volkswagen (1,020)**, **Honda (1,009)**, and **Chevrolet (1,003)**. Their consistent presence indicates strong resale value and consumer trust.

**💡 Recommendation:**  
Dealers should maintain steady inventory of these brands and focus marketing efforts around their reputation. Consider bulk purchases or promotions for frequently resold models.

### SQL Query Used
``` sql
select
      Brand,
      count(*) as popular_car
from
      car_price_dataset2
group by
      Brand
order by
        count(*) desc;
```

### 💰 Insight 2: Average Price by Brand</summary>

**📈 Finding:**  
Highest average prices are from **Chevrolet ($9,015)**, **Mercedes ($8,980)**, and **Audi ($8,929)**. Ford is a high-volume seller with more affordable models.

**💡 Recommendation:**  
Use brand-based pricing strategies. Highlight premium features for luxury brands and affordability for high-turnover models like Ford and Volkswagen.
### SQL Query Used
``` sql
select
     Brand,
     avg(Price) as average_price
from
     car_price_dataset2
group by
     Brand
order by
      average_price desc;
```

### 📉 Insight 3: Depreciation Trends

**📈 Finding:**  
Car prices decrease steadily with age. 2023 models average ~$12,169, while 2000 models average ~$5,393. Depreciation is most steep in the first 5–7 years.

**💡 Recommendation:**  
Educate buyers on value retention. Market newer used cars as cost-efficient alternatives to new models. For older cars, emphasize affordability and stabilized prices.
### SQL Query Used
``` sql
select
    Year,
    avg(price) as depreciation_year
from
    car_price_dataset2
group by
     year
order by
     Year desc ;
```

### 🛣️ Insight 4: Total Mileage Across Top Brands</summary>

**📈 Finding:**  
**Ford**, **Audi**, and **Honda** report total mileages above 150 million km, showing strong long-term reliability and customer trust.

**💡 Recommendation:**  
For high-mileage models, provide thorough service records and offer extended warranties. Market these brands as durable and trustworthy.
### SQL Query Used
``` sql
select
     Brand,
     sum(Mileage) as total_mileage
 from
     car_price_dataset2
 group by
      Brand
 order by
       total_mileage desc
 limit 10;
```

### ⚡ Insight 5: Fuel Type Distribution by Brand</summary>

**📈 Finding:**  
Electric and hybrid models are common among **Audi**, **BMW**, **Ford**, and **Toyota** — showing a growing shift to sustainability.

**💡 Recommendation:**  
Stock and promote electric/hybrid vehicles with emphasis on fuel savings, emission reduction, and green incentives. Train staff on EV-specific buyer questions.
### SQL Query Used
``` sql
select
    Brand,
    Fuel_Type,
    count(*) as count_fuel_type
 from
    car_price_dataset2
 group by
    Brand, Fuel_Type
 order by
    count_fuel_type desc;
```

### 📊 Insight 6: Average Mileage by Brand</summary>

**📈 Finding:**  
**Ford** cars show the highest average mileage (~150,650 km), likely due to durable builds and fleet/commercial use.

**💡 Recommendation:**  
Reassure buyers with vehicle history and certifications. Highlight reliability and long-term value when marketing high-mileage cars.
### SQL Query Used
``` sql
select
   Brand,
   avg(Mileage) as average_mileage
 from
   car_price_dataset2
 where Brand = "Ford"
 group by Brand;
```

### 🔧 Insight 7: Transmission and Price</summary>

**📈 Finding:**  
**Automatic** cars have the highest average price (~$9,938), showing market preference over manual and semi-automatic types.

**💡 Recommendation:**  
Prioritize automatic vehicles in inventory. For manual models, target budget-conscious buyers and emphasize benefits like control and fuel efficiency.
### SQL Query Used
``` sql
select
    Brand,
    avg(Mileage) as average_mileage
 from
    car_price_dataset2
 group by
   Brand
 order by
   average_mileage asc;
```

## ✅ Conclusion

This analysis reveals key factors affecting used car value, demand, and preferences. The findings help dealerships and platforms improve inventory, pricing, and marketing.

It also demonstrates practical use of SQL and Python for real-world data analysis, valuable for a data analytics portfolio.

## ⚠️ Limitations

- No geographic data to analyze regional pricing.  
- No info on car condition, color, or service history.  
- External factors (e.g., economic climate, seasonality) not included.  

## 🚀 Next Steps

- Add geographic and condition data for deeper analysis.  
- Build interactive dashboards using Power BI or Tableau.  
- Create price prediction models using machine learning.  
- Include seasonal and economic indicators to refine insights.  
- Perform customer segmentation for personalized marketing.  


 



