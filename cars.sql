-- Check missing values and basic stats
SELECT
  COUNTIF(price IS NULL) AS missing_prices,
  COUNTIF(horsepower IS NULL) AS missing_horsepower,
  COUNTIF(num_of_doors IS NULL) AS missing_doors,
  AVG(price) AS avg_price,
  MIN(price) AS min_price,
  MAX(price) AS max_price
FROM `bravi-cars-testing.cars.car_Info`;

CREATE OR REPLACE TABLE `bravi-cars-testing.cars.cleaned_car_info` AS
SELECT
  -- Handle missing values
  COALESCE(CAST(price AS INT64), 0) AS price,
  COALESCE(CAST(horsepower AS INT64), 
    (SELECT APPROX_QUANTILES(horsepower, 2)[OFFSET(1)] FROM `bravi-cars-testing.cars.car_Info`)) AS horsepower,
  COALESCE(num_of_doors, 'unknown') AS num_of_doors,
  
  -- Standardize values
  CASE 
    WHEN LOWER(fuel_type) IN ('gas', 'gasoline') THEN 'Petrol'
    ELSE INITCAP(fuel_type)
  END AS fuel_type,
  
  UPPER(TRIM(body_style)) AS body_style,
  
  -- Validate numerical ranges
  CASE
    WHEN engine_size BETWEEN 1 AND 1000 THEN engine_size
    ELSE NULL
  END AS engine_size,
  
  -- Create combined efficiency metric
  ROUND((city_mpg + highway_mpg)/2, 1) AS avg_mpg,
  
  -- Keep other columns
  make, drive_wheels, wheel_base, curb_weight, compression_ratio
FROM `bravi-cars-testing.cars.car_Info`
WHERE 
  -- Remove invalid records
  price > 500 
  AND horsepower BETWEEN 50 AND 1000
  AND compression_ratio BETWEEN 7 AND 23;

--Price Distribution by Body Style:

SELECT
  body_style,
  COUNT(*) AS count,
  ROUND(AVG(price), 2) AS avg_price,
  ROUND(STDDEV(price), 2) AS price_stddev
FROM `bravi-cars-testing.cars.cleaned_car_info`
GROUP BY body_style
ORDER BY avg_price DESC;

-- Fuel Efficiency Analysis:
SELECT
  fuel_type,
  AVG(avg_mpg) AS avg_efficiency,
  AVG(horsepower) AS avg_horsepower,
  COUNT(*) AS count
FROM `bravi-cars-testing.cars.cleaned_car_info`
GROUP BY fuel_type
HAVING count > 10
ORDER BY avg_efficiency DESC;

-- Power-to-Weight Ratio Analysis:

SELECT
  make,
  ROUND(AVG(horsepower/curb_weight), 4) AS power_to_weight_ratio,
  CORR(horsepower, price) AS hp_price_correlation
FROM `bravi-cars-testing.cars.cleaned_car_info`
GROUP BY make
HAVING COUNT(*) > 5
ORDER BY power_to_weight_ratio DESC;
