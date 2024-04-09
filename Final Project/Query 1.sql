SELECT g.Name AS Genre, a.Name AS Actor, COUNT(*) AS MovieCount
FROM Genres g
JOIN Films f ON g.GenreID = f.GenreID
JOIN FilmsActors fa ON f.FilmID = fa.FilmID
JOIN Actors a ON fa.ActorID = a.ActorID
GROUP BY g.GenreID, a.ActorID
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT g.GenreID, a.ActorID, COUNT(*) AS cnt
        FROM Genres g
        JOIN Films f ON g.GenreID = f.GenreID
        JOIN FilmsActors fa ON f.FilmID = fa.FilmID
        JOIN Actors a ON fa.ActorID = a.ActorID
        GROUP BY g.GenreID, a.ActorID
    ) AS t
    WHERE t.GenreID = g.GenreID
)
ORDER BY g.Name;
