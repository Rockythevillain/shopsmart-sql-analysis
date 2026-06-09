-- ShopSmart Retail Sales Analysis
-- Phase 5: Advanced Analysis — Window Functions

-- Query 12: Rank Products by Revenue
SELECT 
    p.product_name,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS revenue,
    RANK() OVER (ORDER BY SUM(oi.quantity * oi.unit_price) DESC) AS revenue_rank
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- Query 13: Running Total of Revenue
SELECT 
    month,
    monthly_revenue,
    ROUND(SUM(monthly_revenue) OVER (ORDER BY month), 2) AS running_total
FROM (
    SELECT 
        STRFTIME('%Y-%m', o.order_date) AS month,
        ROUND(SUM(oi.quantity * oi.unit_price), 2) AS monthly_revenue
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY month
);

-- Query 14: Rank Customers by Spending Within City
SELECT 
    customer_name,
    city,
    total_spent,
    RANK() OVER (PARTITION BY city ORDER BY total_spent DESC) AS city_rank
FROM (
    SELECT 
        c.first_name || ' ' || c.last_name AS customer_name,
        c.city,
        ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY c.customer_id
);

-- Query 15: Each Product's Revenue Share
SELECT 
    p.product_name,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS product_revenue,
    ROUND(SUM(oi.quantity * oi.unit_price) * 100.0 / 
          SUM(SUM(oi.quantity * oi.unit_price)) OVER(), 2) AS revenue_percentage
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY product_revenue DESC;
