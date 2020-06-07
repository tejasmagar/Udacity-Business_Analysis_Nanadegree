WITH table1 AS 
(
	SELECT c.Country, SUM(i.Total) TotalSpent, c.FirstName, c.LastName, c.CustomerId
	FROM 
		Customer c
		JOIN Invoice i ON c.CustomerId = i.CustomerId
	GROUP BY c.CustomerId
)

SELECT table1.*
FROM table1
JOIN(
	SELECT Country, MAX(TotalSpent) AS MaxTotalSpent, FirstName, LastName, CustomerId
	FROM table1
	GROUP BY Country
)table2
ON table1.Country = table2.Country
WHERE table1.TotalSpent = table2.MaxTotalSpent
ORDER BY Country;