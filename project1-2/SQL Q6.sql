SELECT Art.Name, 
	   SUM(InvoiceLine.Quantity)*
       (InvoiceLine.UnitPrice) AS AmountSpent,
       Customer.CustomerId,
       Customer.FirstName,  
       Customer.LastName
FROM  Invoice, InvoiceLine, Track, Customer, Album,Artist Art
WHERE Art.ArtistId=Album.ArtistId
AND Album.AlbumId=Track.AlbumId
AND Track.TrackId=InvoiceLine.TrackId
AND InvoiceLine.InvoiceId=Invoice.InvoiceId
AND Invoice.CustomerId=Customer.CustomerId
AND Art.Name = "Iron Maiden" 
GROUP BY Customer.CustomerId 
ORDER BY AmountSpent DESC;