--Find the customers whose totalspending is between 50000 to 100000.

SELECT CUstomerID, SUM(GrandTotal) AS TotalSpending 
FROM Orders
GROUP BY CustomerID 
HAVING  SUM(GrandTotal) BETWEEN 50000 AND 100000.

