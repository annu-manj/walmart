# 🛒 Walmart Retail Sales Analysis Dashboard

## 📌 Project Overview

This project focuses on analyzing Walmart retail transactional data using **Python, PostgreSQL, SQL, and Power BI** to uncover valuable business insights related to sales performance, customer behavior, branch efficiency, and product category trends.

The raw dataset was cleaned, transformed, stored in PostgreSQL, and connected to Power BI to build an interactive business dashboard.

---

## 🎯 Objectives

- Perform data cleaning and preprocessing
- Analyze sales trends and revenue patterns
- Identify top-performing branches and categories
- Understand customer payment behavior
- Discover peak sales hours
- Build an interactive dashboard for business decision-making

---

## 🛠️ Tech Stack

- **Python (Pandas)** – Data cleaning & preprocessing  
- **PostgreSQL** – Data storage & SQL analysis  
- **SQL** – Business queries, aggregations, window functions  
- **Power BI** – Dashboard & visualization  

---

## 📂 Dataset Columns

- invoice_id  
- Branch  
- City  
- category  
- unit_price  
- quantity  
- date  
- time  
- payment_method  
- rating  
- profit_margin  

---

## ⚙️ Data Cleaning & Preparation

Performed using Python:

- Checked and handled missing values
- Corrected data types
- Created new calculated fields:
  - `total_price = unit_price * quantity`
  - `hour` from time column
  - month/date formatting
- Removed inconsistencies and validated data

---

## 🧠 SQL Analysis Performed

Used SQL queries to solve business problems such as:

- Total revenue generated
- Top categories by branch
- Top 5 highest-value transactions
- Revenue by city / branch
- Peak sales hour
- Most used payment methods
- Average ratings by category
- Ranking categories using window functions

---

## 📊 Power BI Dashboard Features

### KPI Cards
- Total Revenue
- Total Transactions
- Average Rating
- Average Profit Margin

### Visualizations
- Revenue Trend Over Time
- Sales by Hour
- Revenue by Category
- Revenue by Branch
- Payment Method Distribution
- Revenue by City

### Interactive Filters
- Branch
- City
- Category
- Date Range

---

## 🔍 Key Insights

- Identified highest revenue-generating branches
- Discovered peak shopping hours
- Compared category performance across locations
- Analyzed preferred customer payment methods
- Evaluated ratings and profit margins by category

---

