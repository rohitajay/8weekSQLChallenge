Q1. What is the total amount each customer spent at the restaurant?

SELECT s.customer_id, SUM(menu.price) AS total_sales
FROM sales s 
INNER JOIN menu 
ON s.product_id = menu.product_id
GROUP BY s.customer_id
;
