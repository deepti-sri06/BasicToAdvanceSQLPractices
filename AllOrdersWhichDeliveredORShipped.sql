--Find all orders where status is either delivered and shipped . 

SELECT * FROM Orders
WHERE OrderStatus IN('Delivered', 'Shipped') ;