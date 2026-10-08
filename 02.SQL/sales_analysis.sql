USE ecommerce_analytics_new;
/*Question 1*/
SELECT SUM(quantity * unit_price)
FROM Order_Details
JOIN Orders
    ON Order_Details.order_id = Orders.order_id
WHERE order_status = 'Completed';
/*Question 2*/
SELECT 
    MONTH(order_date) AS month,
    SUM(quantity * unit_price) AS total_revenue
FROM Orders
JOIN Order_Details
    ON Orders.order_id = Order_Details.order_id
WHERE order_status = 'Completed'
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date);
/*Question 3*/
SELECT product_id, SUM(quantity) AS total_quantity
FROM Order_Details
GROUP BY product_id
ORDER BY total_quantity DESC
LIMIT 1;
/*Question 4*/
SELECT 
    product_id,
    SUM(quantity * unit_price) AS total_revenue
FROM Order_Details
JOIN Orders 
    ON Orders.order_id = Order_Details.order_id
WHERE order_status = 'Completed'
GROUP BY product_id
ORDER BY SUM(quantity * unit_price) DESC
LIMIT 1;
/*Question 5*/
SELECT 
    Customers.customer_id,
    Customers.customer_name,
    SUM(Order_Details.quantity * Order_Details.unit_price) AS total_revenue
FROM Customers
JOIN Orders
    ON Customers.customer_id = Orders.customer_id
JOIN Order_Details
    ON Orders.order_id = Order_Details.order_id
WHERE Orders.order_status = 'Completed'
GROUP BY Customers.customer_id, Customers.customer_name
ORDER BY total_revenue DESC
LIMIT 1;
/*Question 6*/
SELECT 
    Products.category,
    SUM(Order_Details.quantity * Order_Details.unit_price) AS total_revenue
FROM Products
JOIN Order_Details 
    ON Order_Details.product_id = Products.product_id
JOIN Orders 
    ON Orders.order_id = Order_Details.order_id
WHERE Orders.order_status = 'Completed'
GROUP BY Products.category
ORDER BY total_revenue DESC
LIMIT 1;
/*Question 7*/
SELECT AVG(total_revenue) AS average_order_value
FROM (
    SELECT 
        Orders.order_id,
        SUM(Order_Details.quantity * Order_Details.unit_price) AS total_revenue
    FROM Orders
    JOIN Order_Details
        ON Orders.order_id = Order_Details.order_id
    WHERE Orders.order_status = 'Completed'
    GROUP BY Orders.order_id
) AS order_totals;
/*Question 8*/
SELECT 
    SUM(
        Order_Details.quantity * 
        (Order_Details.unit_price - Products.cost)
    ) AS total_profit
FROM Orders
JOIN Order_Details
    ON Orders.order_id = Order_Details.order_id
JOIN Products
    ON Order_Details.product_id = Products.product_id
WHERE Orders.order_status = 'Completed';