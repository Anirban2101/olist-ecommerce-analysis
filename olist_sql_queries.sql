-- Q7. Which payment type is most used?
select payment_type,count(*) as total
from payments
group by payment_type;


-- Q6. How is Olist performing on delivery — how many orders are late vs on time, and by how many days?
select order_estimated_delivery_date, order_delivered_customer_date, datediff(order_estimated_delivery_date, order_delivered_customer_date) as time_difference, 
case
    when datediff(order_estimated_delivery_date, order_delivered_customer_date) < 0 then 'late'
    when datediff(order_estimated_delivery_date, order_delivered_customer_date) > 0 then 'on_time'
    when datediff(order_estimated_delivery_date, order_delivered_customer_date) = 0 then 'exactly_on_time'
    else 'NULL'
end as delivery_status
from orders;

select case
    when datediff(order_estimated_delivery_date, order_delivered_customer_date) < 0 then 'late'
    when datediff(order_estimated_delivery_date, order_delivered_customer_date) > 0 then 'on_time'
    when datediff(order_estimated_delivery_date, order_delivered_customer_date) = 0 then 'exactly_on_time'
    else 'NULL'
end as delivery_status, COUNT(*) as total
from orders
group by delivery_status;


-- Q5. Which products have the best and worst reviews?
select products.product_id,avg(review_score) as avg_review
from products join order_items
on products.product_id = order_items.product_id
join reviews
on order_items.order_id = reviews.order_id
group by products.product_id
having count(review_id) > 5
order by avg_review desc;


-- Q4. Which sellers are generating highest sales and performing well?
select sellers.seller_id, round(sum(price),2) as total_revenue
from sellers join order_items
on sellers.seller_id = order_items.seller_id
group by seller_id
order by total_revenue desc;


-- Q3. which states generate the most money for Olist 
select customer_state,round(sum(price),2) as total_revenue
from customers join orders
on customers.customer_id = orders.customer_id
join order_items
on orders.order_id = order_items.order_id
group by customer_state
order by total_revenue desc;


-- Q2. Which states have the most customers and highest orders?
select customer_state, count(customers.customer_id) as no_of_customers,count(order_id) as no_of_orders
from customers join orders
on customers.customer_id = orders.customer_id
group by customer_state
order by no_of_orders desc;


-- Q1. Which product categories generate the most revenue?
select sum(price) as total_revenue,product_category_name_english
from products join order_items on products.product_id = order_items.product_id
join category_translation on products.product_category_name = category_translation.product_category_name
group by product_category_name_english
order by total_revenue desc;