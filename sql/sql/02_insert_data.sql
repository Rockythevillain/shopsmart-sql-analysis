-- ShopSmart Retail Sales Analysis
-- Phase 2: Sample Data

-- Customers
INSERT INTO customers (first_name, last_name, email, city, country, signup_date) VALUES
('James',   'Smith',    'james.smith@email.com',    'London',     'UK', '2023-01-15'),
('Priya',   'Patel',    'priya.patel@email.com',    'Manchester', 'UK', '2023-02-20'),
('Carlos',  'Garcia',   'carlos.garcia@email.com',  'Birmingham', 'UK', '2023-03-10'),
('Aisha',   'Khan',     'aisha.khan@email.com',     'Leeds',      'UK', '2023-04-05'),
('Sophie',  'Williams', 'sophie.w@email.com',       'Bristol',    'UK', '2023-05-18'),
('David',   'Brown',    'david.brown@email.com',    'Edinburgh',  'UK', '2023-06-22'),
('Fatima',  'Ali',      'fatima.ali@email.com',     'Cardiff',    'UK', '2023-07-30'),
('Liam',    'Johnson',  'liam.j@email.com',         'Liverpool',  'UK', '2023-08-14'),
('Chen',    'Wei',      'chen.wei@email.com',       'London',     'UK', '2023-09-01'),
('Amara',   'Osei',     'amara.osei@email.com',     'Glasgow',    'UK', '2023-10-11');

-- Products
INSERT INTO products (product_name, category, price, stock_qty) VALUES
('Wireless Headphones', 'Electronics',     79.99, 120),
('Running Shoes',       'Clothing',        54.99, 200),
('Coffee Maker',        'Home & Kitchen',  39.99,  85),
('Laptop Stand',        'Electronics',     29.99, 150),
('Yoga Mat',            'Sports',          24.99, 300),
('Bluetooth Speaker',   'Electronics',     49.99,  95),
('Winter Jacket',       'Clothing',        89.99,  60),
('Air Fryer',           'Home & Kitchen',  69.99,  40),
('Desk Lamp',           'Home & Kitchen',  19.99, 180),
('Smartwatch',          'Electronics',    129.99,  75);

-- Orders
INSERT INTO orders (customer_id, order_date, status) VALUES
(1,  '2024-01-10', 'Completed'),
(2,  '2024-01-15', 'Completed'),
(3,  '2024-02-03', 'Completed'),
(4,  '2024-02-20', 'Completed'),
(5,  '2024-03-05', 'Completed'),
(6,  '2024-03-18', 'Completed'),
(7,  '2024-04-02', 'Completed'),
(8,  '2024-04-25', 'Completed'),
(1,  '2024-05-10', 'Completed'),
(9,  '2024-05-22', 'Completed');

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1,  1,  1,  79.99),
(1,  4,  2,  29.99),
(2,  2,  1,  54.99),
(2,  5,  1,  24.99),
(3,  6,  1,  49.99),
(3,  3,  1,  39.99),
(4,  7,  1,  89.99),
(5,  8,  1,  69.99),
(5,  9,  2,  19.99),
(6,  10, 1, 129.99),
(7,  1,  2,  79.99),
(8,  2,  1,  54.99),
(9,  6,  1,  49.99),
(9,  5,  2,  24.99),
(10, 3,  1,  39.99);
