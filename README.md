# Retail Sales Analysis — Saree Shop

## Project Overview
End-to-end retail sales analysis on original business data from a family-owned saree shop.
Covers relational database design, SQL-based insight generation, and an interactive Power BI
dashboard across supplier, product, salesperson, and color dimensions.

## Tools Used
- SQL (MySQL Workbench)
- Excel
- Power BI

## Database Design
- 3 interconnected tables: march_sales, category, seller
- 100 transactions | Real retail reference data
- Connected via foreign keys (categ_id, seller_c)

## Key Findings
- Banarasi was the highest revenue-generating saree type at ₹2,69,467
- Top salesperson Vikas generated ₹5,17,188 revenue across 81 units in a single month
- ₹2,43,473 in discount-driven revenue loss identified — 11.7% of gross revenue
- Top supplier by units: Suratiya (93 units) | Top supplier by revenue: Meghdoot (₹5,26,706)
- Most preferred colors: Purple (66 units), Pink (54), Maroon (49)
- Cash was the most preferred payment mode
- Highest single-day revenue: ₹1,61,263 on 30th March 2026 (Monday)

## SQL Concepts Used
- Multi-table JOINs
- Window Functions (DENSE_RANK)
- GROUP BY / ORDER BY
- Date Functions (DAYNAME)
- Analytical VIEWs
- Aggregate Functions (SUM, AVG, COUNT)

## Project Files
- `retail_analysis_main.sql` — Core business questions (Q1–Q6)
- `retail_analysis_suppliers.sql` — Supplier analysis with VIEW (Q7–Q9)

## Power BI Dashboard

### Page 1 — March Report
![March Report](R_Page_1.png)

### Page 2 — Salesperson Performance
![Salesperson Performance](R_Page_2.png)

### Page 3 — Supplier Analysis
![Supplier Analysis](R_Page_3.png)
