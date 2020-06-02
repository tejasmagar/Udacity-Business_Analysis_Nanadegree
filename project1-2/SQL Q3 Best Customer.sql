SELECT Cust.CustomerID,Cust.FirstName,sum(Inv.Total)as TotalSpent 
FROM Customer Cust,Invoice Inv
WHERE Cust.CustomerId=Inv.CustomerId
GROUP BY Inv.CustomerId
ORDER BY TotalSpent DESC
LIMIT 1;