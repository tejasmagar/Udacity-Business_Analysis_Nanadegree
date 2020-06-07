SELECT Tra.Name, Tra.Milliseconds as AvgLength
FROM Track Tra
JOIN MediaType MTTable
ON Tra.MediaTypeId=MTTable.MediaTypeId
WHERE  (SELECT AVG(Milliseconds) FROM Track)<Tra.Milliseconds
ORDER BY AvgLength DESC;