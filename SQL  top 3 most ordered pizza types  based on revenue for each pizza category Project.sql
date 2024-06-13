-- Determine the top 3 most ordered pizza types 
-- based on revenue for each pizza category.
 select pizza_types.category, pizza_types.name
 sum((order_details.quantity) * pizzas.price) as revenue
 from pizzas