-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    AVG(quantity) as order_per_day_pizza_average
FROM
    (SELECT 
        orders.order_date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON order_details.order_id = orders.order_id
    GROUP BY orders.order_date) AS order_quantity;