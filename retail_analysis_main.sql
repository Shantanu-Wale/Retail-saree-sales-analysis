USE shan_shop;

-- Retail Sales Analysis — Saree Shop (March 2026)
-- Dataset: 100 transactions | 3 interconnected tables
-- By: Shantanu Wale


-- Q1. Which saree type generated the highest total revenue?
-- Result: Banarasi topped at 269467.25

SELECT c.category, m.saree, SUM(m.quantity) AS quantity_sold, SUM(m.total_cost) AS revenue
FROM march_sales m
JOIN category c ON c.categ_id = m.categ_id
GROUP BY c.category, m.saree
ORDER BY revenue DESC;


-- Q2. Which salesperson achieved the highest sales in March 2026?
-- Result: Vikas — 81 units sold | Revenue: 517187.60 | Avg Discount: 10%

SELECT 
    sales_person, AVG(discount) AS avg_discount, 
    SUM(quantity) AS units_sold, 
    SUM(total_cost) AS revenue
FROM march_sales
GROUP BY sales_person
ORDER BY revenue DESC;


-- Q3. What are the top 3 most sold saree colors?
-- Result: Purple: 66 | Pink: 54 | Maroon: 49

SELECT colour, SUM(quantity) AS units_sold
FROM march_sales
GROUP BY colour
ORDER BY units_sold DESC;


-- Q4. Which payment mode was most preferred by customers?
-- Result: Cash was the most preferred payment mode

SELECT payment_mode, COUNT(*) AS preferred_pay_mode
FROM march_sales
GROUP BY payment_mode
ORDER BY preferred_pay_mode DESC;


-- Q5. On which date was the highest revenue recorded?
-- Result: 2026-03-30 | Monday | Revenue: 161263.45 | 6 transactions

SELECT 
    date, COUNT(date) AS transactions,
    DAYNAME(date) AS day, 
    SUM(total_cost) AS revenue 
FROM march_sales 
GROUP BY date 
ORDER BY revenue DESC;


-- Q6. How much revenue was lost due to discounts?
-- Result: Gross Revenue: 2078942 | Net Revenue: 1835468.85 | Loss: 243473.15 (11.7%)

SELECT 
    SUM(total_cost) AS revenue_with_discount,
    SUM(quantity * price_per_unit) AS pure_revenue,
    SUM(quantity * price_per_unit) - SUM(total_cost) AS revenue_loss
FROM march_sales;