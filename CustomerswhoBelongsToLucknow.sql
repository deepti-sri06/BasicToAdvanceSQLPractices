--Find customers whose name start with A and who are from Lucknow.

SELECT * FROM Customers
WHERE FirstName LIKE  'a%' AND City ='Lucknow';
 