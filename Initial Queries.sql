SELECT ProductID, SUM(Quantity) AS TotalQuantity FROM Orders GROUP BY ProductID;
SELECT * FROM EMPLOYEES WHERE SALARY = (SELECT DISTINCT(SALARY) FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 1,1);
SELECT OrderID, CustomerID, OrderDate FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE LName = 'Ray');
SELECT CustomerID, SUM(Quantity) AS TotalQuantity FROM Orders WHERE ProductID = 12345 AND OrderDate > '2020-11-11' GROUP BY CustomerID ORDER BY TotalQuantity DESC;
SELECT Orders.OrderID, Customers.CustomerName FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID ORDER BY Customers.CustomerName;
