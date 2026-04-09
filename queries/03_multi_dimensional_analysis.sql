-- =========================================
-- Day 3 - Multi-dimensional aggregations & ratios
-- =========================================

-- Objective: analyze flights by state and day of the week
SELECT
  origin_state_nm,
  day_of_week,
  COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`
GROUP BY origin_state_nm, day_of_week
ORDER BY total_flights DESC;

-- Objective: validate global pattern by day of the week
SELECT
  day_of_week,
  COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`
GROUP BY day_of_week
ORDER BY total_flights DESC;

-- Objective: analyze flights by state and month
SELECT
  origin_state_nm,
  month,
  COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`
GROUP BY origin_state_nm, month
ORDER BY total_flights DESC;

-- Objective: structured view by state and month
SELECT
  origin_state_nm,
  month,
  COUNT(*) AS total_flights
FROM `sql_practice.flights_2024`
GROUP BY origin_state_nm, month
ORDER BY origin_state_nm, month;

-- Objective: check available months in dataset
SELECT DISTINCT month
FROM `sql_practice.flights_2024`
ORDER BY month;

-- Objective: calculate percentage of flights by month
-- Using scalar subquery to compute total flights
SELECT
  month,
  COUNT(*) AS total_flights_month,
  ROUND(
    100 * SAFE_DIVIDE(
      COUNT(*),
      (SELECT COUNT(*) FROM `sql_practice.flights_2024`)
    ),
    2
  ) AS flights_rate_pct
FROM `sql_practice.flights_2024`
GROUP BY month
ORDER BY flights_rate_pct DESC;