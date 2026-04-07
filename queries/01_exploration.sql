-- =========================================
-- Basic exploration - flights_2024 dataset
-- =========================================

-- Preview data
SELECT *
FROM `sql_practice.flights_2024`
LIMIT 5;

-- Total number of flights
SELECT COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`;

-- Number of distinct origin airports
SELECT COUNT(DISTINCT origin) AS total_airports
FROM `sql_practice.flights_2024`;

-- Distinct values of day_of_week
SELECT DISTINCT day_of_week
FROM `sql_practice.flights_2024`
ORDER BY day_of_week;

-- Validate meaning of day_of_week
-- BigQuery: 1 = Sunday, 2 = Monday, ...
-- Dataset: inferred that 1 = Monday
SELECT 
  day_of_week, 
  fl_date,
  EXTRACT(DAYOFWEEK FROM fl_date) AS extracted_day_of_week
FROM `sql_practice.flights_2024`
LIMIT 10;