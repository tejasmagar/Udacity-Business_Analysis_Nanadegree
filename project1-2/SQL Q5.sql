SELECT Art.ArtistId,Art.Name,Count(Gen.Name)
FROM Artist Art,Album,Track,Genre Gen
WHERE Art.ArtistId=Album.ArtistId
AND Album.AlbumId=Track.AlbumId
AND Track.GenreId=Gen.GenreId
AND Gen.Name="Rock"
GROUP BY Art.Name
ORDER BY COUNT(Gen.Name) desc
LIMIT 10;
