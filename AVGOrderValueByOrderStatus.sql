--Find the average order value for each order status .

SELECT  OrderStatus , AVG(GrandTotal) AS AVGOrderValue 
FROM Orders
GROUP BY OrderStatus
