CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES 
    (1, '2022-01-05', 100.50),
    (2, '2020-01-07', 200.75),
    (1, '2022-01-08', 150.25),
    (3, '2020-05-10', 300.00),
    (2, '2022-01-15', 180.50),
    (3, '2022-01-20', 220.25),
    (1, '2022-01-25', 90.00),
    (2, '2022-01-28', 120.75),
    (3, '2021-02-01', 250.50),
    (1, '2022-02-05', 180.25),
    (4, '2023-02-05', 190.25);

SELECT customer_id, count(order_id), sum(total_amount) as totalAmount from orders GROUP BY customer_id;
SELECT customer_id, count(order_id), sum(total_amount) as totalAmount from orders GROUP BY customer_id HAVING count(order_id)>2;

SELECT EXTRACT(month from order_date) as month, sum(total_amount) as total_sepnt from orders WHERE EXTRACT(year from order_date) = 2022 GROUP BY month ;