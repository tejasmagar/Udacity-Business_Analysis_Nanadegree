SELECT DISTINCT(Cust.Email),Cust.FirstName,Cust.LastName,Gen.Name
FROM Customer Cust, Genre Gen,Invoice,InvoiceLine,Track
WHERE Cust.CustomerId=Invoice.CustomerId
AND Invoice.InvoiceId=InvoiceLine.InvoiceId
AND InvoiceLine.TrackId=Track.TrackId
AND Track.GenreId=Gen.GenreId
AND Gen.Name="Rock"
ORDER BY  Cust.Email;
