--Find the Ctegories whose average product price is greater than 2000.

SELECT c.CategoryID,
	   c.CategoryName , 
	   AVG(CostPrice) AS Price 
FROM Categories c 
INNER JOIN Products p
ON c.CategoryID=p.CategoryID
GROUP BY c.CategoryID,
	     c.CategoryName 
HAVING  AVG(CostPrice)>2000