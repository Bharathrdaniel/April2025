# Portfolio Projects
## Following are my projects in SQL, R, Tableau & Excel: <br />

*Kindly download these Excel files from this repository and view them in Microsoft Excel.*


- [x] **Tableau** -

# CO2 Emissions Analysis (2000-2011)

## Overview

Using Tableau, this project visualizes CO2 emissions per capita for each country from 2000 to 2011. The goal is to provide an interactive view of global emissions trends and highlight regional differences.

## Data Source

*   ["Public data set"]

## Tableau Dashboard

*   [CO2 Emissions Dashboard](https://public.tableau.com/views/CO_2emissionspercapitaforeachcountryfrom2000-2011_17410183466300/Sheet1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Key Features

*   **World Map:** Visualizes CO2 emissions per capita for each country, with color intensity indicating higher emissions.
*   **Year Filter:** Allows users to explore emissions trends over the years from 2000 to 2011.
*   **Tooltips:** Provide detailed information on emissions for each country when hovering over the map.

## Design Choices

*   **Color Scheme:** Used a sequential color scheme to represent the range of CO2 emissions, with darker shades indicating higher emissions.
*   **World Map:** Chosen to provide a clear geographical overview of emissions patterns.
*   **Interactive Filters:** The Year filter enables users to compare emissions across different years easily.

## Key Insights

*   ["CO2 emissions per capita have generally increased in India from 2000 to 2011 while in United Kingdom CO2 emissions per capita have decreased." ].
*   ["Some countries have shown significant reductions in CO2 emissions per capita over the period."].

## Tools Used

*   Tableau

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

- [x] **Excel** - 

# Analysis of Job Market Trends: Millennials vs. Baby Boomers (2007-2013)

## Overview

This analysis examines job market data for Millennials and Baby Boomers between 2007 and 2013. The data, sourced from `MillenialsvsBabyBoomers-National-2-digit.csv`, includes job numbers, job changes, and share of jobs across various occupational categories. The analysis aims to identify key trends and differences in employment patterns between the two generations.

## Data Source

*   `MillenialsvsBabyBoomers-National-2-digit.csv`

## Data Cleaning and Preparation

1.  **Imported the CSV file into Excel.**
2.  **Removed commas from the "2007 Jobs" and "2013 Jobs" columns** using the "Find & Replace" function to convert them to numerical format.
3.  **Formatted the "2007 Jobs" and "2013 Jobs" columns as numbers** to enable calculations.
4.  **Confirmed no other data inconsistencies** such as missing values or incorrect formatting.

## Analysis

### 1. Overall Job Growth and Decline by Occupation

A Pivot Table was created to analyze the sum of "Job Change" by "Occupation" and "Generation". This revealed the occupations with the most significant gains and losses for each generation between 2007 and 2013.

Here are some initial high-level observations:

* **Baby Boomers**
    * Overall job increase
    * Experienced job decline in 'Construction and Extraction Occupations'
* **Millennials**
    * Overall job decrease
    * Experienced significant job growth in 'Food Preparation and Serving Related Occupations' and 'Healthcare Support Occupations'

### 2. Share of Jobs Analysis

Another Pivot Table was created to analyze the "2007 Share of All Jobs" and "2013 Share of All Jobs" by "Occupation" and "Generation". This analysis helped identify which occupations became more or less concentrated in each generation.

Key observations:

* **Baby Boomers**
    * Increase in share of jobs in the 'Healthcare Practitioners and Technical Occupations',  'Office and Administrative Support Occupations' and 'Installation, Maintenance, and Repair Occupations'
* **Millennials**
    * Decrease in share of jobs in the 'Computer and Mathematical Occupations', 'Arts, Design, Entertainment, Sports, and Media Occupations', 'Construction and Extraction Occupations'

## Key Insights and Observations

*   Both generations experienced growth in the job market from 2007 to 2013.

[Download (Millenials_vs_BabyBoomers](Millenials_vs_BabyBoomers.xlsx)

## Tools Used

*   Microsoft Excel

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

- [x] **SQL** - 

# Car Dataset Analysis and Cleaning - BigQuery

## Overview

This project details the data exploration and cleaning steps performed on a car dataset in Google BigQuery. The goal was to prepare the data for further analysis and modeling by addressing data quality issues.

## Dataset

*   Dataset Name: `car_Info`
*   Project Path: `bravi-cars-testing.cars.car_Info`

## Data Cleaning Steps

The data-cleaning process involved the following steps:

*   Handling missing values
*   Correcting data inconsistencies
*   Ensuring data consistency

See the detailed SQL queries used for these steps: [update_cars.sql](data_update_cars.sql)

## Tools Used

*   Google BigQuery

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# NYC Trees Dataset Analysis - BigQuery

## Overview

This project analyzes the NYC Trees dataset in Google BigQuery to compare the average tree diameters across different census years (1995, 2005, and 2015).

## Dataset

*   `bigquery-public-data.new_york_trees`

## SQL Queries

The following queries were used to perform the analysis:

*   Calculate average tree diameter in 1995
*   Calculate average tree diameter in 2015
*   Compare average diameters across all three years

## Tools Used

*   Google BigQuery


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Analyzing US County Natality Data (2016-2018) - BigQuery

## Overview

This project explores the CDC's natality dataset in BigQuery, focusing on US county births from 2016 to 2018. The analysis uses SQL's `ORDER BY` clause to sort data, enabling identification of counties with the most and least births.

## Dataset

*   Dataset Name: `sdoh_cdc_wonder_natality`
*   Table: `county_natality`

## Analysis Steps

The analysis involved the following steps:

1.  Loading and exploring the dataset.
2.  Sorting data by the "Births" column in ascending and descending order.
3.  Filtering for specific counties in New York.
4.  Sorting the filtered data to identify birth trends.

The detailed SQL queries used in this project can be found [births_analysis.sql](https://github.com/YourGitHubUsername/YourRepoName/blob/main/births_analysis.sql).

## Key Insights

*   Tompkins County, NY had the lowest number of births between 2016-2018.
*   Los Angeles County has the highest number of births between 2016-2018.
*   Sorting data with `ORDER BY` helps in analyzing and identifying trends or extreme values.

## Tools Used

*   Google BigQuery

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Analyzing Employee Data with JOINs in BigQuery

## Overview

This project explores different types of SQL JOINs (INNER, LEFT, RIGHT, and FULL OUTER) using employee and department data in BigQuery. The goal is to understand how JOINs combine rows from two or more tables based on a related column.

## Dataset

The analysis uses two tables, `employees` and `Departments`, within the `employee_data` dataset in BigQuery.

*   `bharath-workbook.employee_data.employees`
*   `bharath-workbook.employee_data.Departments`

## SQL Queries

The following queries were used in this analysis:

1.  **INNER JOIN:** Returns records with matching values in both tables.
2.  **LEFT JOIN:** Returns all records from the left table (employees) and matching records from the right table (Departments).
3.  **RIGHT JOIN:** Returns all records from the right table (Departments) and matching records from the left table (employees).
4.  **FULL OUTER JOIN:** Combines RIGHT JOIN and LEFT JOIN to return all matching records in both tables.

The detailed SQL queries can be found [employee_data_joins.sql](https://github.com/YourGitHubUsername/YourRepoName/blob/main/employee_data_joins.sql).

## Tools Used

*   Google BigQuery

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

- [x] ** R Studio ** - 

# R Sandbox Activity - Short

A brief introduction to R with a focus on viewing, cleaning, and visualizing data using the `tidyverse` package. Open `r_sandbox_short.Rmd` in RStudio to run the code.

## Key Concepts

*   Installing and loading R packages
*   Viewing data with `head()`, `str()`, `glimpse()`, and `colnames()`
*   Cleaning data with `rename()` and `summarize()`
*   Visualizing data with `ggplot2`
*   Documenting code with R Markdown

## Contact

*   [Bharath Ravi]
*   [bharathrdaniel@gmail.com]
