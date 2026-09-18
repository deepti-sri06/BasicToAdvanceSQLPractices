-- Find the Customers who have placed at least 5 orders .

SELECT 
		c.CustomerID, 
	    CONCAT(c.FirstName ,' ' ,c.Lastname ) AS CustomerName ,
		c.Email, 
		c.PhoneNo,
		COUNT(o.OrderID) As orders 
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,
	     c.FirstName,
		 c.LastName,
		 c.Email,
		 c.PhoneNo
HAVING 	COUNT(o.OrderID)>=5

