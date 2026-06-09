-- ShopSmart Retail Sales Analysis
-- Phase 4: Intermediate Analysis

-- Query 7: Repeat Customers
SELECT 
    c.first_name || ' ' || c.last_name AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 1;

-- Query 8: Average Order Value
SELECT 
    ROUND(AVG(order_total), 2) AS avg_order_value
FROM (
    SELECT 
        o.order_id,
        SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.order_id
);

-- Query 9: Customers Who Never Ordered
SELECT 
    c.first_name || ' ' || c.last_name AS customer_name,
    c.email,
    c.signup_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Query 10: Revenue by Month and Category
SELECT 
    STRFTIME('%Y-%m', o.order_date) AS month,
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month, p.category
ORDER BY month, revenue DESC;

-- Query 11: Low Stock Alert
SELECT 
    product_name,
    category,
    stock_qty
FROM products
WHERE stock_qty < 80
ORDER BY stock_qty ASC;
