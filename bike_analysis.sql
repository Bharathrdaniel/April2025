-- Task 1: Find the name of the station whose start_station_id is 111
SELECT 
    start_station_name
FROM 
    `bigquery-public-data.london_bicycles.cycle_hire`
WHERE 
    start_station_id = 111;

-- Task 2: Return all rental_ids, station IDs, and station names for bike_id 1710
SELECT 
    rental_id, 
    start_station_id, 
    start_station_name
FROM 
    `bigquery-public-data.london_bicycles.cycle_hire`
WHERE 
    bike_id = 1710;

-- Task 3: Find the bike_model of bike_id 58782
SELECT 
    bike_model
FROM 
    `bigquery-public-data.london_bicycles.cycle_hire`
WHERE 
    bike_id = 58782;

-- Additional combined logic (if needed in the future)
-- Combine results or execute analytical operations as required
