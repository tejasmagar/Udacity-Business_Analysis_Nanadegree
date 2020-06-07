SELECT Art.ArtistId,Art.Name,Count(Gen.Name)
FROM Artist Art 
JOIN Album ON Art.ArtistId=Album.ArtistId
JOIN Track ON Album.AlbumId=Track.AlbumId
JOIN Genre Gen ON Track.GenreId=Gen.GenreId
WHERE Gen.Name="Rock"
GROUP BY Art.Name
ORDER BY COUNT(Gen.Name) desc
LIMIT 10;