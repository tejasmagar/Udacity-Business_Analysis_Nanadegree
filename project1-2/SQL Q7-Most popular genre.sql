WITH table1 AS (
	SELECT
	COUNT(Inv.InvoiceId) Purchases, Cust.Country, Gen.Name, Gen.GenreId
	FROM Invoice Inv,Customer Cust, Genre Gen,InvoiceLine Invl, Track Tr
	WHERE Inv.CustomerId = Cust.CustomerId
	AND Invl.Invoiceid = Inv.InvoiceId
    AND Tr.TrackId = Invl.Trackid
	AND Tr.GenreId = Gen.GenreId
    GROUP BY Cust.Country, Gen.Name
	ORDER BY Cust.Country, Purchases DESC
	)

SELECT table1.*
FROM table1
JOIN (
	SELECT MAX(Purchases) AS MaxPurchases, Country, Name, GenreId
	FROM table1
	GROUP BY Country
	)table2
ON table1.Country = table2.Country
WHERE table1.Purchases = table2.MaxPurchases;