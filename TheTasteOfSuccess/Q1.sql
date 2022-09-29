-- Q1. What is the total amount each customer spent at the restaurant?

SELECT s.customer_id, SUM(menu.price) AS total_sales
FROM sales s 
INNER JOIN menu 
ON s.product_id = menu.product_id
GROUP BY s.customer_id
;



-- How many days has each customer visited the restaurant?

SELECT sales.customer_id, COUNT(DISTINCT(sales.order_date)) AS total_days
FROM sales
GROUP BY sales.customer_id;
