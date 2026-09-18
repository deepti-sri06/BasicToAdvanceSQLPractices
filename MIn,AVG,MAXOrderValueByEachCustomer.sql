--Find the minimum, maximum, average order value by each customer .

SELECT c.CustomerID ,
	   CONCAT(c.FirstName ,' ', c.LastName ) AS CustomerName ,
	   c.Email,
	   c.PhoneNo ,
	   MIN(o.GrandTotal) AS MinimumOrderValue ,
	   AVG(o.GrandTotal) AS AverageOrderValue ,
	   MAX(o.GrandTotal) As MaximumOrderValue 
FROM Customers c
INNER JOIN Orders o 
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,
		 c.FirstName,
		 c.LastName,
		 c.Email,
		 c.PhoneNo