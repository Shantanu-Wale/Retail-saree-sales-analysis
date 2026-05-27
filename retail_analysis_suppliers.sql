USE shan_shop;

-- Supplier Analysis — Saree Shop (March 2026)
-- By: Shantanu Wale


-- created a view joining all 3 tables for easier supplier analysis
CREATE OR REPLACE VIEW top_seller AS
SELECT 
    s.s_name,
    m.saree,
    c.category,
    m.quantity,
    m.price_per_unit,
    m.total_cost
FROM march_sales m
JOIN category c ON c.categ_id = m.categ_id
JOIN seller s ON s.seller_c = c.seller_c;


-- Q7. Best supplier by units sold
-- Result: Suratiya — 93 units (Rank 1)

SELECT 
    s_name, 
    SUM(quantity) AS total_quantity,
    DENSE_RANK() OVER(ORDER BY SUM(quantity) DESC) AS rank_by_units
FROM top_seller
GROUP BY s_name;


-- Q8. Best supplier by revenue generated
-- Result: Meghdoot — 82 units | Revenue: 526706.30

SELECT 
    s_name, 
    SUM(quantity) AS total_quantity_sold, 
    SUM(total_cost) AS revenue 
FROM top_seller 
GROUP BY s_name 
ORDER BY revenue DESC;


-- Q9. Supplier breakdown by category and product
-- shows high-margin low-volume suppliers via avg price per unit

SELECT 
    s_name, category, saree, 
    SUM(quantity) AS total_quantity_sold,
    SUM(total_cost) AS revenue,
    ROUND(SUM(total_cost) / SUM(quantity), 2) AS avg_price_per_unit
FROM top_seller
GROUP BY s_name, category, saree
ORDER BY revenue DESC;