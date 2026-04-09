# ✈️ Flight Delay Analysis (SQL)

![SQL](https://img.shields.io/badge/SQL-BigQuery-blue)
![Status](https://img.shields.io/badge/status-learning-yellow)
![License](https://img.shields.io/badge/license-MIT-green)

## 📌 Overview

This repository contains SQL exercises and analysis performed on a flight dataset using **Google BigQuery**.

The goal is to practice SQL fundamentals while building a structured and well-documented data analysis workflow.

------

## 📁 Repository Structure

```
flight-delay-analysis-sql/
│
├── data/          # Dataset reference and source info
├── queries/       # SQL queries
├── insights/      # Analysis and findings (future)
├── images/        # Visualizations (future)
└── README.md
```

------

## 📂 Dataset

- Source: Kaggle (Flight Data 2024)
- Format: CSV loaded into BigQuery
- Scope: Flight-level data including dates, airports and operational details

------

## 🧠 Objectives

- Practice SQL
- Understand dataset structure and semantics
- Validate data consistency

------

## 📊 Progress

### Day 1 - Basic exploration

- Dataset preview
- Total number of flights
- Distinct origin airports
- Exploration of `day_of_week` values
- Validation of `day_of_week` semantics using `EXTRACT`

### Day 2 - Grouped aggregations
- Validation of years represented in the dataset
- Flight counts by `day_of_week`
- Count of distinct origin airports
- Flight counts by `origin`
- Flight counts by `origin_state_nm`
- Comparison of aggregation granularity: airport vs state

### Day 3 - Multi-dimensional aggregations & ratios
- Flight counts by `origin_state_nm` and `day_of_week`
- Validation of consistent weekly patterns across states
- Flight counts by `origin_state_nm` and `month`
- Identification of dataset limitation (only January and February)
- Introduction to ratio calculations using scalar subqueries
- Percentage distribution of flights by month