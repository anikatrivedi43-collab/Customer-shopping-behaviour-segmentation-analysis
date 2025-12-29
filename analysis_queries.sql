-- Total Customers Count
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- Total Revenue
SELECT SUM(amount) AS total_revenue
FROM orders;

-- Top 5 High Spending Customers
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Average Spending per Customer
SELECT customer_id, AVG(amount) AS avg_spent
FROM orders
GROUP BY customer_id;

-- Repeat Customers
SELECT customer_id, COUNT(order_id) AS orders_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- Revenue by City
SELECT c.city, SUM(o.amount) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city;

-- Age Group Segmentation
SELECT 
CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 50 THEN '36-50'
    ELSE '50+'
END AS age_group,
COUNT(*) AS total_customers
FROM customers
GROUP BY age_group;

-- Monthly Sales Trend
SELECT 
MONTH(order_date) AS month,
SUM(amount) AS monthly_sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;

-- Customers with Total Spending > 1500
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 1500;

-- Highest Single Order Amount
SELECT MAX(amount) AS highest_order
FROM orders;

-- Number of Orders per City
SELECT c.city, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city;

-- Average Order Value
SELECT AVG(amount) AS avg_order_value
FROM orders;

-- Customers with More Than Average Spending
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > (
    SELECT AVG(amount) FROM orders
);

-- Month with Highest Sales
SELECT MONTH(order_date) AS month, SUM(amount) AS sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY sales DESC
LIMIT 1;

-- Customer Count by Gender
SELECT gender, COUNT(*) AS total_customers
FROM customers
GROUP BY gender;

-- Customer Segmentation (High / Medium / Low Spender)
SELECT customer_id,
CASE
    WHEN SUM(amount) > 2000 THEN 'High Spender'
    WHEN SUM(amount) BETWEEN 1000 AND 2000 THEN 'Medium Spender'
    ELSE 'Low Spender'
END AS customer_type
FROM orders
GROUP BY customer_id;


