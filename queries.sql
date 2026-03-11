CREATE TABLE sales (
order_id INT,
product VARCHAR(50),
region VARCHAR(50),
quantity INT,
price INT,
order_date DATE
);

SELECT SUM(quantity * price) AS total_revenue
FROM sales;

SELECT product,
SUM(quantity) AS total_units
FROM sales
GROUP BY product
ORDER BY total_units DESC;

SELECT region,
SUM(quantity * price) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

SELECT MONTH(order_date) AS month,
SUM(quantity * price) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;
