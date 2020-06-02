SELECT BillingCity,max(Total) FROM Invoice
GROUP BY BillingCity
ORDER BY Total desc
LIMIT 1;