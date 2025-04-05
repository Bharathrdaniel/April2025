-- 1. Display the first 1,000 rows of the county_natality table
SELECT
  *
FROM
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
LIMIT
  1000;

-- 2. Sort the data by the "Births" column in ascending order (default)
SELECT
  *
FROM
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
ORDER BY
  Births
LIMIT
  10;

-- 3. Explicitly state the sorting order as ascending (ASC)
SELECT
  *
FROM
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
ORDER BY
  Births ASC
LIMIT
  10;

-- 4. Sort the data by the "Births" column in descending order (DESC)
SELECT
  *
FROM
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
ORDER BY
  Births DESC
LIMIT
  10;

-- 5. Filter results for specific counties in New York, and sort by county and year
SELECT
  *
FROM
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
WHERE
  County_of_Residence = 'Erie County, NY'
  OR County_of_Residence = 'Niagara County, NY'
  OR County_of_Residence = 'Chautauqua County, NY'
ORDER BY
  County_of_Residence,
  Year;

-- 6. Modify the previous query to order by Births in descending order to find the greatest number of births in specified counties
SELECT
  *
FROM
  `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
WHERE
  County_of_Residence = 'Erie County, NY'
  OR County_of_Residence = 'Niagara County, NY'
  OR County_of_Residence = 'Chautauqua County, NY'
ORDER BY
  Births DESC;