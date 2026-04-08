-- =========================================
-- Day 2 - Grouped aggregations
-- =========================================

-- Objective: inspect which years are represented in the dataset
SELECT DISTINCT year
FROM `sql_practice.flights_2024`
ORDER BY year;

-- Objective: count flights by day of the week
SELECT
  day_of_week,
  COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`
GROUP BY day_of_week
ORDER BY total_flights DESC;

-- Objective: count distinct origin airports
SELECT
  COUNT(DISTINCT origin) AS total_airports
FROM `sql_practice.flights_2024`;

-- Objective: count flights by origin airport
SELECT
  origin,
  COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`
GROUP BY origin
ORDER BY total_flights DESC;

-- Objective: count flights by origin state
SELECT
  origin_state_nm,
  COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`
GROUP BY origin_state_nm
ORDER BY total_flights DESC;