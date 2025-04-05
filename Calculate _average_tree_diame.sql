-- Calculate the average tree diameter in 1995
SELECT
  AVG(diameter) AS avg_diameter_1995
FROM
  `bigquery-public-data.new_york_trees.tree_census_1995`;

-- Calculate the average tree diameter in 2015
SELECT
  AVG(tree_dbh) AS avg_diameter_2015
FROM
  `bigquery-public-data.new_york_trees.tree_census_2015`;

-- Compare average diameters across 1995, 2005, and 2015
SELECT
  '1995' AS census_year,
  AVG(diameter) AS avg_diameter
FROM
  `bigquery-public-data.new_york_trees.tree_census_1995`
UNION ALL
SELECT
  '2005' AS census_year,
  AVG(tree_dbh) AS avg_diameter
FROM
  `bigquery-public-data.new_york_trees.tree_census_2005`
UNION ALL
SELECT
  '2015' AS census_year,
  AVG(tree_dbh) AS avg_diameter
FROM
  `bigquery-public-data.new_york_trees.tree_census_2015`
ORDER BY census_year;
