--Find the month in which total sales is exceeded 100000.

SELECT YEAR(OrderDate) AS OrderYear,
	   MONTH(OrderDate ) AS OrderMonth,
	   SUM(GrandTotal) AS MonhlySales 
FROM Orders
GROUP  BY YEAR(OrderDate),
          MONTH(OrderDate )
HAVING SUM(GrandTotal) >10000000

ORDER BY YEAR(OrderDate),
          MONTH(OrderDate ) 