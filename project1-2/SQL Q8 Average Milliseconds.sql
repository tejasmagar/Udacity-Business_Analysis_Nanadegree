SELECT Name, Milliseconds FROM (
	SELECT Tra.Name, Tra.Milliseconds, (SELECT AVG(Milliseconds) FROM Track) AS AvgLenght
	FROM Track Tra
	WHERE AvgLenght < Tra.Milliseconds
	ORDER BY Tra.Milliseconds DESC