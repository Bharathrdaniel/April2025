-- Preview first 100 rows
SELECT * 
FROM `bravi-cars-testing.cars.car_Info`
LIMIT 100;

-- Check schema and data types
SELECT column_name, data_type
FROM `bravi-cars-testing.cars`.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'car_Info';

-- Replace missing prices with median price
CREATE OR REPLACE TABLE `bravi-cars-testing.cars.car_Info` AS
SELECT
  COALESCE(price, 0) AS price,
  COALESCE(mileage, 0) AS mileage,
  COALESCE(year, EXTRACT(YEAR FROM CURRENT_DATE())) AS year,
  -- Add other columns with similar COALESCE logic
FROM `bravi-cars-testing.cars.car_Info`;

-- Clean text fields
UPDATE `bravi-cars-testing.cars.car_Info`
SET
  body_type = UPPER(TRIM(body_type)),
  fuel_type = INITCAP(TRIM(fuel_type)),
  transmission = CASE 
    WHEN LOWER(transmission) LIKE '%auto%' THEN 'Automatic'
    WHEN LOWER(transmission) LIKE '%manual%' THEN 'Manual'
    ELSE 'Other'
  END
WHERE TRUE;


-- Remove invalid entries
DELETE FROM `bravi-cars-testing.cars.car_Info`
WHERE 
  year < 1900 OR year > EXTRACT(YEAR FROM CURRENT_DATE())
  OR mileage < 0
  OR price < 0;

--Create Cleaned Table
CREATE OR REPLACE TABLE `bravi-cars-testing.cars.cleaned_car_info` AS
SELECT
  vin,
  make,
  model,
  year,
  mileage,
  price,
  -- Add calculated age column
  EXTRACT(YEAR FROM CURRENT_DATE()) - year AS age,
  body_type,
  fuel_type,
  transmission
FROM `bravi-cars-testing.cars.car_Info`
WHERE
  vin IS NOT NULL
  AND make IS NOT NULL
  AND model IS NOT NULL;

--Average Price by Make
SELECT 
  make,
  ROUND(AVG(price), 2) AS avg_price,
  COUNT(*) AS count
FROM `bravi-cars-testing.cars.cleaned_car_info`
GROUP BY make
ORDER BY avg_price DESC;

--Mileage Distribution
SELECT
  FLOOR(mileage/10000)*10000 AS mileage_range,
  COUNT(*) AS count
FROM `bravi-cars-testing.cars.cleaned_car_info`
GROUP BY mileage_range
ORDER BY mileage_range;

--Fuel Type Analysis
SELECT
  fuel_type,
  ROUND(AVG(price), 2) AS avg_price,
  ROUND(AVG(mileage), 2) AS avg_mileage,
  COUNT(*) AS count
FROM `bravi-cars-testing.cars.cleaned_car_info`
GROUP BY fuel_type;

-- Advanced Analysis (Vehicle Age vs Price
SELECT
  age,
  ROUND(AVG(price), 2) AS avg_price,
  ROUND(AVG(mileage), 2) AS avg_mileage
FROM `bravi-cars-testing.cars.cleaned_car_info`
GROUP BY age
ORDER BY age;

