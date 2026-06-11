# 🛍️ Retail Sales Analysis : Saree Shop (End-to-End)

> **Tools:** SQL · MySQL Workbench · Excel · Power BI
> **Dataset:** Original self-created retail sales data based on real business reference
> **Records:** 100 sales transactions · 4 product categories · 4 suppliers · 5 salespersons

---

## 📌 Project Overview

This is an end-to-end retail sales analytics project built on original data from a real saree retail business. The project covers the full analytics pipeline : from relational database design and SQL-based insight generation to a 4-page interactive Power BI dashboard covering executive overview, product performance, salesperson insights, and customer preferences.

---

## 🗂️ Dataset Details

| Attribute | Details |
|---|---|
| Source | Original self-created dataset based on real retail business reference |
| Period | March 2026 (30 days) |
| Total Records | 100 sales transactions |
| Product Categories | 4 (Traditional Prei, Premium, Casual Wear, Traditional) |
| Saree Types | Banarasi, Chiffon, Cotton, Designer, Georgette, Kanjivaram, Silk, Linen |
| Suppliers | 4 (Meghdoot, Suratiya, Vallabhi, Katarya) |
| Salespersons | 5 (Vikas, Sneha, Meena, Rohan, Aarti) |
| Colours | 9 (Purple, Pink, Maroon, Red, Blue, White, Yellow, Green, Black) |

---

## 🔑 Key Business Questions Answered

| # | Question | Finding |
|---|---|---|
| Q1 | Which saree type generated highest revenue? | Banarasi : Rs. 2,69,467 |
| Q2 | Which salesperson achieved highest sales? | Vikas : Rs. 5,17,190 (28.18% share) |
| Q3 | Top 3 best-selling colours? | Purple · Pink · Red |
| Q4 | Which payment mode is most preferred? | Cash : Rs. 5,11,980 (27.89%) |
| Q5 | How much revenue was lost to discounts? | Rs. 2,43,473 (Discount Led Loss) |
| Q6 | Which category contributes most revenue? | Traditional Prei : 28.7% revenue share |
| Q7 | Which supplier leads in sales? | Meghdoot : highest supplier-oriented sales |
| Q8 | Which saree type has highest discount sum? | Kanjivaram : highest total discount |
| Q9 | Which category has highest avg discount? | Traditional Prei : 13.57% avg discount |

---

## 🛠️ SQL Techniques Used

- `GROUP BY` with `COUNT`, `SUM`, `AVG` for aggregations
- `WINDOW FUNCTIONS` : `SUM() OVER(PARTITION BY ...)` for running totals
- `JOIN` operations across sales, category, and supplier tables
- `ANALYTICAL VIEWS` for simplified multi-table business reporting
- `DATE FUNCTIONS` : `DAYNAME()` for peak sales day identification
- `HAVING` clause for filtered group-level analysis
- `ORDER BY` with `LIMIT` for top-N rankings
- Discount impact calculation : base price vs actual revenue comparison

---

## 📈 Power BI Dashboard : 4 Pages

### Page 1 : Executive Overview
![Executive Overview](R_Page_1.png)

- **KPI Cards:** Total Revenue (1.84M), Units Sold (316), Average Discount (10.90), Discount Led Loss (243.47K), Average Revenue (18.35K)
- **Payment Mode Preference** : horizontal bar: Cash leading at Rs. 5,11,980
- **Salesperson Performance Donut** : Vikas: 28.18% · Aarti: 21.57% · Rohan: 17.92% · Sneha: 16.29% · Meena: 16.04%
- **Sales by Category** : horizontal bar: Traditional Prei and Premium leading
- **Sales Trend of March** : area chart showing daily revenue fluctuation across 30 days
- **Supplier Orient Sale** : bar chart: Meghdoot leading (Rs. 0.53M)

---

### Page 2 : Product Performance Dashboard
![Product Performance Dashboard](R_Page_2.png)

- **Revenue by Sale Type** : multi-series line chart across saree types per category
- **Quantity Sold by Sale Type** : line chart showing volume vs revenue relationship
- **Category Contribution %** : donut: Traditional Prei (28.7%), Premium (28.26%), Casual Wear (23%), Traditional (19.47%)
- **Category Revenue w.r.t Discounts** : scatter plot: discount % vs total revenue per category : pricing sensitivity analysis
- **Category Contribution Treemap** : hierarchical visual of saree types within each category

---

### Page 3 : Salesperson Performance & Customer Insights
![Salesperson Performance and Customer Insights](R_Page_3.png)

- **Revenue by Salesperson** : grouped bar chart broken down by category per salesperson
- **Revenue vs Quantity Scatter Plot** : discount % vs total revenue per salesperson : identifies high-revenue vs high-discount performers
- **Average Discounts by Category** : line chart showing discount behaviour per salesperson
- **Salesperson Performance Donut** : Vikas leading at 28.18% (Rs. 5,17,190)

---

### Page 4 : Sale Trend & Overall Customer Preferences
![Sale Trend and Overall Customer Preferences](R_Page_4.png)

- **Revenue by Payment Mode Donut** : Cash (27.89%), Credit Card (27.05%), UPI (24.78%), Debit Card (20.28%)
- **Saree-Type by Discount** : horizontal bar: Kanjivaram and Designer highest total discount
- **Revenue & Quantity Sold by Colour** : dual-axis bar+line: Purple and Pink lead both revenue and quantity
- **Category by Average Discount Donut** : Traditional Prei (13.57%), Premium (10.69%), Traditional (10.00%), Casual Wear (9.76%)
- **Discount Impact on Sales** : scatter plot: revenue vs quantity sold across discount levels

---

## 💡 Key Insights

1. **Banarasi sarees** generate highest revenue despite not being highest volume : premium pricing drives value
2. **Vikas leads** at 28.18% revenue share : Traditional Prei is his strongest category
3. **Rs. 2,43,473 lost to discounts** : Kanjivaram and Designer types carry highest discount burden
4. **Purple is the most demanded colour** : inventory procurement should prioritise Purple and Pink
5. **Traditional Prei and Premium** together contribute 56.96% of total revenue : core business drivers
6. **Cash and Credit Card** together account for 54.94% of revenue : both digital and cash payment support essential
7. **Meghdoot leads supplier sales** at Rs. 5,30,000+ : strongest supply chain partner
8. **Traditional Prei has highest avg discount** (13.57%) yet leads revenue : strong demand despite heavy discounting


```

---

## 👤 Author

**Shantanu Rudresh Wale**
Data Analyst | Pune, Maharashtra
📧 wale.shantanu2001@gmail.com
🔗 [GitHub Profile](https://github.com/Shantanu-Wale)

---

*Dataset is original and self-created based on real retail business reference data.*
