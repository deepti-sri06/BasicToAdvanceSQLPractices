--Find Top 5 customer by thier total spending .

SELECT TOP 5
	   c.CustomerID,
	   CONCAT(c.FirstName ,' ' , c.LastName) AS CustomerName ,
	   c.Email,
	   c.PhoneNo,
	   SUM(o.GrandTotal) As TotalSpending 
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,
	     c.FirstName,
		 c.LastName,
	     c.Email,
	     c.PhoneNo
ORDER BY TotalSpending DESC