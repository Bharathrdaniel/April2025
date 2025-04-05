-- SQL Queries for Analyzing Car Dataset

-- Inspecting Fuel Type
SELECT
  DISTINCT fuel_type
FROM
  `bravi-cars-testing.cars.car_Info`
LIMIT 1000;

-- Checking Length Values
SELECT
  MIN(length) AS min_length,
  MAX(length) AS max_length
FROM
  `bravi-cars-testing.cars.car_Info`;

-- Handling Missing Values in num_of_doors using CREATE OR REPLACE TABLE
CREATE OR REPLACE TABLE
  `bravi-cars-testing.cars.car_Info` AS
SELECT
  *,
  CASE
    WHEN make = "dodge" AND fuel_type = "gas" AND body_style = "sedan" THEN "four"
    WHEN make = "mazda" AND fuel_type = "diesel" AND body_style = "sedan" THEN "four"
    ELSE num_of_doors
  END AS num_of_doors
FROM
  `bravi-cars-testing.cars.car_Info`;

-- Identifying Errors in num_of_cylinders
SELECT
  DISTINCT num_of_cylinders
FROM
  `bravi-cars-testing.cars.car_Info`;

-- Correcting the misspelling in num_of_cylinders (in full BigQuery - skipping in sandbox)
-- UPDATE
--   `bravi-cars-testing.cars.car_Info`
-- SET
--   num_of_cylinders = "two"
-- WHERE
--   num_of_cylinders = "tow";

-- Correcting Out-of-Range Values in compression_ratio
SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  `bravi-cars-testing.cars.car_Info`;

-- Check number of rows with erroneous compression_ratio value
SELECT
   COUNT(*) AS num_of_rows_to_delete
FROM
   `bravi-cars-testing.cars.car_Info`
WHERE
   compression_ratio = 70;

-- Deleting the row with the erroneous compression_ratio value (in full BigQuery - skipping in sandbox)
-- DELETE `bravi-cars-testing.cars.car_Info`
-- WHERE compression_ratio = 70;

-- Previewing row to be deleted (BigQuery Sandbox)
SELECT * FROM `bravi-cars-testing.cars.car_Info` WHERE compression_ratio = 70;

-- Ensuring Consistency in drive_wheels
SELECT
  DISTINCT drive_wheels
FROM
  `bravi-cars-testing.cars.car_Info`;

-- Checking Length of drive_wheels entries
SELECT
  DISTINCT drive_wheels,
  LENGTH(drive_wheels) AS string_length
FROM
  `bravi-cars-testing.cars.car_Info`;

-- Verifying drive_wheels consistency
SELECT
  DISTINCT drive_wheels
FROM
  `bravi-cars-testing.cars.car_Info`;
