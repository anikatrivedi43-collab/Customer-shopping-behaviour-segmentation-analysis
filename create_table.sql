CREATE TABLE customers (
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);