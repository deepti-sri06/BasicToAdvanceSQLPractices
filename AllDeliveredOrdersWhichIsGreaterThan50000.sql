--Find orders where GrandTotal is greater than 50000 and orderstatus is delivered.

SELECT * FROM Orders
where GrandTotal >50000
AND OrderStatus='Delivered';