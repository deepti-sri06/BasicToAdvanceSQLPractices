--Find the Product whose price is greater than the average product price .

SELECT * FROM Products 
WHERE UnitPrice >(
SELECT AVG(UnitPrice ) FROM Products);